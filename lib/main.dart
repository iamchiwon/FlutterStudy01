import 'package:flutter/cupertino.dart';

import 'page/bottom_tab.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeOrange,
      ),
      home: BottomTab(),
    );
  }
}
