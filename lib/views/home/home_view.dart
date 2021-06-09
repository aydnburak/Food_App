import 'package:flutter/material.dart';
import 'package:food_app/constants/app_constant.dart';
import 'package:food_app/constants/color.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

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
    return Column(
      children: <Widget>[
        _buildHeader(height, width),
        _buildFoodTypesList(height, width),
        _buildNewFoodCard(height, width)
      ],
    );
  }

  Widget _buildNewFoodCard(double height, double width) {
    return Container(
      width: width * 0.87,
      height: height * 0.18,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)), color: AppColors.black),
      child: Row(
        children: <Widget>[
          Container(
            width: width * 0.40,
            child: CircleAvatar(
              radius: width * 0.14,
              backgroundImage: AssetImage(AppConstant.imageGreenFood),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: width * 0.03, top: width * 0.03, bottom: width * 0.03),
            width: width * 0.47,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("    New",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0),
                    textAlign: TextAlign.center),
                Text("Smoothie bowl",
                    style: const TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 18.0),
                    textAlign: TextAlign.left),
                Text("4.65 TL",
                    style: const TextStyle(
                        color: AppColors.red,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 24.0),
                    textAlign: TextAlign.left),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FittedBox(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.lightGreen,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Icon(Icons.add)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(double height, double width) {
    return Stack(
      children: <Widget>[
        _buildHeaderImage(height),
        _buildHeaderSearch(width, height),
      ],
    );
  }

  Widget _buildHeaderImage(double height) {
    return Container(
      height: height * 0.2,
      decoration: BoxDecoration(
        color: AppColors.green,
        image: DecorationImage(image: AssetImage(AppConstant.imageGreenFood), fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    );
  }

  Widget _buildHeaderSearch(double width, double height) {
    return Positioned(
      bottom: 15,
      left: width * 0.15,
      right: width * 0.15,
      child: Container(
        height: height * 0.06,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            color: AppColors.white),
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 17),
              hintText: 'Search',
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              icon: Image.asset(AppConstant.iconSearch)),
          cursorColor: AppColors.green,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildFoodTypesList(double height, double width) {
    return Container(
      height: height * 0.17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FoodTypeModel.foodTypes.length,
          itemBuilder: (context, index) {
            var _model = FoodTypeModel.foodTypes[index];
            return _buildFoodTypeButton(height, width, _model);
          }),
    );
  }

  Widget _buildFoodTypeButton(double height, double width, FoodTypeModel _model) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: height * 0.03, horizontal: width * 0.03),
      child: Column(
        children: [
          Container(
            height: height * 0.07,
            width: height * 0.08,
            padding: EdgeInsets.all(height * 0.02),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0x1a000000),
                      offset: Offset(0, 0),
                      blurRadius: 40,
                      spreadRadius: 0)
                ],
                color: AppColors.white),
            child: _model.icon,
          ),
          SizedBox(height: height * 0.01),
          Text(_model.name,
              style: const TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0),
              textAlign: TextAlign.center)
        ],
      ),
    );
  }
}

class FoodTypeModel {
  final String name;
  final Widget icon;

  FoodTypeModel({required this.name, required this.icon});

  static List<FoodTypeModel> foodTypes = [
    FoodTypeModel(name: "All", icon: Image.asset(AppConstant.iconSearch)),
    FoodTypeModel(name: "Sou", icon: Image.asset(AppConstant.iconSearch)),
    FoodTypeModel(name: "Drink", icon: Image.asset(AppConstant.iconSearch)),
    FoodTypeModel(name: "Stea", icon: Image.asset(AppConstant.iconSearch)),
    FoodTypeModel(name: "Cake", icon: Image.asset(AppConstant.iconSearch)),
  ];
}
