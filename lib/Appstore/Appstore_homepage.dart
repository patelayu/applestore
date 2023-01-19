import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global.dart';
import '../main.dart';
import 'app_page.dart';
import 'game_page.dart';

class CupertinoHomePage extends StatefulWidget {
  const CupertinoHomePage({Key? key}) : super(key: key);

  @override
  State<CupertinoHomePage> createState() => _CupertinoHomePageState();
}

class _CupertinoHomePageState extends State<CupertinoHomePage>
    with SingleTickerProviderStateMixin {
  List data = [
    const GamePageIOS(),
    const AppsPageIOS(),
    // const UpdatePageIOS(),
    // const SearchPageIOS(),
  ];

  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: const Border(),
        trailing: CupertinoSwitch(
          activeColor: CupertinoColors.systemBlue.withOpacity(0.7),
          value: Globals.platForm,
          onChanged: (val) {
            Globals.platForm = val;
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ),
                    (route) => false);
          },
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: tabController.index,
          onTap: (val) {
            tabController.index = val;
          },
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.rocket_fill),
              icon: Icon(CupertinoIcons.rocket),
              label: "Games",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.app_fill),
              icon: Icon(CupertinoIcons.app),
              label: "Apps",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.arrow_down_circle_fill),
              icon: Icon(CupertinoIcons.tag),
              label: "Offers",
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return data[index];
            },
          );
        },
      ),
    );
  }
}