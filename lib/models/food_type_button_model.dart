import 'package:flutter/material.dart';
import 'package:food_app/constants/app_constant.dart';

class FoodTypeButtonModel {
  final String name;
  final Widget icon;

  FoodTypeButtonModel({required this.name, required this.icon});

  static List<FoodTypeButtonModel> foodTypes = [
    FoodTypeButtonModel(name: "All", icon: Image.asset(AppConstant.iconSearch)),
    FoodTypeButtonModel(name: "Sou", icon: Image.asset(AppConstant.iconSearch)),
    FoodTypeButtonModel(name: "Drink", icon: Image.asset(AppConstant.iconSearch)),
    FoodTypeButtonModel(name: "Stea", icon: Image.asset(AppConstant.iconSearch)),
    FoodTypeButtonModel(name: "Cake", icon: Image.asset(AppConstant.iconSearch)),
  ];
}
