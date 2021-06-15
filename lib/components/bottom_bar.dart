import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_app/constants/app_constant.dart';
import 'package:food_app/constants/color.dart';
import 'package:food_app/viewmodels/page_viewmodel.dart';

class BottomBar extends StatelessWidget {
  final PageViewModel model;

  BottomBar({Key? key, required this.model});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.08,
      width: width * 0.87,
      padding: EdgeInsets.all(height * 0.02),
      margin: EdgeInsets.only(bottom: height * 0.012),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)), color: AppColors.white),
      child: Observer(
        builder: (_) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              child: model.bottomBarButtonType == BottomBarButtonType.home
                  ? Icon(
                      Icons.home_filled,
                      color: AppColors.blue,
                    )
                  : Icon(Icons.home_filled),
              onTap: () {
                model.changeBottomBarButtonType(BottomBarButtonType.home);
              },
            ),
            InkWell(
              child: model.bottomBarButtonType == BottomBarButtonType.receipe
                  ? Icon(
                      Icons.book,
                      color: AppColors.blue,
                    )
                  : Icon(Icons.book),
              onTap: () {
                model.changeBottomBarButtonType(BottomBarButtonType.receipe);
              },
            ),
            InkWell(
              child: Image.asset(AppConstant.iconSearch),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
