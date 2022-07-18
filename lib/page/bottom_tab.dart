import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample01/page/home/home_page.dart';
import 'package:sample01/page/news/news_page.dart';
import 'package:sample01/page/profile/profile_page.dart';
import 'package:sample01/page/search/search_page.dart';
import 'package:sample01/page/shop/shop_page.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({Key? key}) : super(key: key);

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  final _pages = [
    const HomePage(),
    const ShopPage(),
    const SearchPage(),
    const NewsPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart), label: "Shops"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.news), label: "News"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
        ],
      ),
      tabBuilder: (context, index) {
        return _pages[index];
      },
    );
  }
}
