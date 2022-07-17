import '../framework/ViewModel.dart';

class BottomTabViewModel extends ViewModel{
  int currentTabIndex = 0;

  onChangeTab(int index) {
    currentTabIndex = index;
    refresh();
  }
}

