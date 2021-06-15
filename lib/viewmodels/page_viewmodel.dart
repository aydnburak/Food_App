import 'package:mobx/mobx.dart';

part 'page_viewmodel.g.dart';

class PageViewModel = PageViewModelBase with _$PageViewModel;
enum FoodButtonType { type1, type2, type3, type4, type5 }
enum BottomBarButtonType { home, receipe }

abstract class PageViewModelBase with Store {
  @observable
  FoodButtonType _foodButtonType = FoodButtonType.type1;

  @observable
  BottomBarButtonType _bottomBarButtonType = BottomBarButtonType.home;

  @computed
  FoodButtonType get foodButtonType => _foodButtonType;

  @computed
  BottomBarButtonType get bottomBarButtonType => _bottomBarButtonType;

  @action
  void changeFoodButtonType(FoodButtonType foodButtonType) {
    _foodButtonType = foodButtonType;
  }

  @action
  void changeBottomBarButtonType(BottomBarButtonType bottomBarButtonType) {
    _bottomBarButtonType = bottomBarButtonType;
  }
}
