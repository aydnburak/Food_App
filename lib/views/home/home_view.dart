import 'package:flutter/material.dart';
import 'package:food_app/components/bottom_bar.dart';
import 'package:food_app/components/food_card.dart';
import 'package:food_app/components/food_type_button.dart';
import 'package:food_app/components/new_food_card.dart';
import 'package:food_app/constants/color.dart';
import 'package:food_app/models/food_type_button_model.dart';
import 'package:food_app/viewmodels/page_viewmodel.dart';
import 'package:food_app/views/home/home_header.dart';

class HomeView extends StatefulWidget {
  final PageViewModel model;

  const HomeView({Key? key, required this.model}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _buildBody(height, width),
    );
  }

  Widget _buildBody(double height, double width) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HomeHeader(searchController: _searchController),
          _buildFoodTypesList(height, width),
          NewFoodCard(),
          _buildText(height, width),
          SizedBox(height: height * 0.02),
          _buildPupularFoodList(height, width),
          SizedBox(height: height * 0.04),
          BottomBar(model: widget.model),
        ],
      ),
    );
  }

  Widget _buildPupularFoodList(double height, double width) {
    return Container(
      height: height * 0.245,
      width: width * 0.87,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Row(
              children: <Widget>[
                FoodCard(index: index),
                SizedBox(width: width * 0.03),
              ],
            );
          }),
    );
    //return Container(height: height * 0.245, width: width * 0.87, color: Colors.amber);
  }

  Widget _buildText(double height, double width) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.024, left: width * 0.065),
      child: Row(
        children: [
          Text("Popular",
              style: const TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Widget _buildFoodTypesList(double height, double width) {
    return Container(
      height: height * 0.17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FoodTypeButtonModel.foodTypes.length,
          itemBuilder: (context, index) {
            var _model = FoodTypeButtonModel.foodTypes[index];
            return FoodtypeButton(
              model: _model,
              index: index,
            );
          }),
    );
  }
}
