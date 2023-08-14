import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino18TabScaffoldScreen extends StatefulWidget {
  @override
  _Cupertino18TabScaffoldScreenState createState() => _Cupertino18TabScaffoldScreenState();
}

class _Cupertino18TabScaffoldScreenState extends State<Cupertino18TabScaffoldScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) => CupertinoTabView(
        builder: (context) => Center(
          child: index == 0 ? Text('Home') : Text('Settings'),
        ),
      ),
    );
  }
}
