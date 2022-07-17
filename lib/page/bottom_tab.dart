import 'package:flutter/material.dart';
import 'package:sample01/page/home/home_page.dart';
import 'package:sample01/page/news/news_page.dart';
import 'package:sample01/page/profile/profile_page.dart';
import 'package:sample01/page/search/search_page.dart';
import 'package:sample01/page/shop/shop_page.dart';

import 'BottomTabViewModel.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({Key? key}) : super(key: key);

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  final _viewModel = BottomTabViewModel();
  final _pages = [
    const HomePage(),
    const ShopPage(),
    const SearchPage(),
    const NewsPage(),
    const ProfilePage()
  ];

  @override
  void initState() {
    _viewModel.refresh = () {
      setState(() {});
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _pages[_viewModel.currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _viewModel.onChangeTab,
        currentIndex: _viewModel.currentTabIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Shops"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile"),
        ],
      ),
    );
  }
}
