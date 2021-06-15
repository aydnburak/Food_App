import 'package:flutter/material.dart';
import 'package:food_app/constants/color.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _buildBody(height, width),
    );
  }

  Widget _buildBody(double height, double width) {
    return Stack(children: <Widget>[
      Positioned(
        left: 0,
        child: Container(
          width: width * 0.40,
          padding: EdgeInsets.only(right: width * 0.07),
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: AppColors.white),
          child: _buildBodyLeft(height, width),
        ),
      ),
      Positioned(
        right: 0,
        child: Container(
          width: width * 0.67,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: AppColors.blue),
          child: _buildBodyRight(height, width),
        ),
      )
    ]);
  }

  Widget _buildBodyLeft(double height, double width) {
    return Column(
      children: <Widget>[],
    );
  }

  Widget _buildBodyRight(double height, double width) {
    return Column(
      children: <Widget>[],
    );
  }
}
