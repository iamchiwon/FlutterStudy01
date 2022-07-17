class BottomTabViewModel {
  Function refresh = () {};

  int currentTabIndex = 0;

  onChangeTab(int index) {
    currentTabIndex = index;
    refresh();
  }
}