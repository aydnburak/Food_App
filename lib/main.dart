import 'package:flutter/material.dart';
import 'package:food_app/constants/theme.dart';
import 'package:food_app/views/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: myThemaLight,
      home: HomeView(),
    );
  }
}
