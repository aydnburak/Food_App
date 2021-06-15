import 'package:flutter/material.dart';
import 'package:food_app/constants/app_constant.dart';
import 'package:food_app/constants/color.dart';

class HomeHeader extends StatelessWidget {
  final TextEditingController searchController;

  const HomeHeader({Key? key, required this.searchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
          controller: searchController,
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
}
