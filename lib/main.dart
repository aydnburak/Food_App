import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_app/constants/theme.dart';
import 'package:food_app/viewmodels/page_viewmodel.dart';
import 'package:food_app/views/detail/detail_view.dart';
import 'package:food_app/views/home/home_view.dart';
import 'package:food_app/views/receipes/receipes_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final model = PageViewModel();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        title: 'Food App',
        debugShowCheckedModeBanner: false,
        theme: myThemaLight,
        home: model.bottomBarButtonType == BottomBarButtonType.home
            ? HomeView(model: model)
            : ReceipesView(model: model),
      ),
    );
  }

/*
  Widget _buildLoadingPage() {
    final _model = PageViewModel();
    /*
    return Observer(
      builder: (_) {
        switch (_model.bottomBarButtonType) {
          case BottomBarButtonType.home:
            return HomeView();
          case BottomBarButtonType.receipe:
            return ReceipesView();
        }
      },
    );
     */
  }
   */
}
