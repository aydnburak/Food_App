import 'package:flutter/material.dart';
import 'package:food_app/constants/app_constant.dart';
import 'package:food_app/constants/color.dart';

class NewFoodCard extends StatelessWidget {
  const NewFoodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
}
