import 'package:flutter/material.dart';
import 'package:food_app/constants/app_constant.dart';
import 'package:food_app/constants/color.dart';

class FoodCard extends StatelessWidget {
  final index;
  const FoodCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.42,
      height: height * 0.245,
      decoration: new BoxDecoration(
        color: index % 2 == 0 ? AppColors.blue : AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: height * 0.170,
            child: CircleAvatar(
              radius: height * 0.06,
              backgroundImage: AssetImage(AppConstant.imageGreenFood),
            ),
          ),
          Container(
            height: height * 0.075,
            padding: EdgeInsets.only(
              left: height * 0.015,
              right: height * 0.015,
              bottom: height * 0.005,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Clam chowder",
                    style: const TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0),
                    textAlign: TextAlign.left),
                SizedBox(height: height * 0.007),
                Row(
                  children: <Widget>[
                    Text("28.75 TL",
                        style: const TextStyle(
                            color: const Color(0xfffb4e4e),
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                        textAlign: TextAlign.left),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.lightGreen,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        size: 17,
                      )),
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
