import 'package:flutter/material.dart';
import 'package:food_app/constants/color.dart';
import 'package:food_app/models/food_type_button_model.dart';

class FoodtypeButton extends StatelessWidget {
  final FoodTypeButtonModel model;
  final int index;
  const FoodtypeButton({Key? key, required this.model, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
            child: model.icon,
          ),
          SizedBox(height: height * 0.01),
          Text(model.name,
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
