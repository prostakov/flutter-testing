import 'package:cupertino_test/constants/routes.dart';
import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var buttonPadding = const EdgeInsets.only(top: 20, left: 10, right: 10);
  var buttonInnerPadding = const EdgeInsets.all(0);

  var routeLabelsMap = {
    Routes.cupertinoPageScaffold: '01 - CupertinoPageScaffold',
    Routes.cupertinoActionSheetAction: '02 - CupertinoActionSheetAction',
    Routes.cupertinoActivityIndicator: '03 - CupertinoActivityIndicator',
    Routes.cupertinoAlertDialog: '04 - CupertinoAlertDialog',
    Routes.cupertinoButton: '05 - CupertinoButton',
    Routes.cupertinoContextMenu: '06 - CupertinoContextMenu',
    Routes.cupertinoDatePicker: '07 - CupertinoDatePicker',
    Routes.cupertinoPageRoute: '08 - CupertinoPageRoute',
    Routes.cupertinoPageScaffold2: '09 - CupertinoPageScaffold2',
    Routes.cupertinoPicker: '10 - CupertinoPicker',
    Routes.cupertinoPopupSurface: '11 - CupertinoPopupSurface',
    Routes.cupertinoScrollBar: '12 - CupertinoScrollBar',
    Routes.cupertinoSearchTextField: '13 - CupertinoSearchTextField',
    Routes.cupertinoSegmentedControl: '14 - CupertinoSegmentedControl',
    Routes.cupertinoSlider: '15 - CupertinoSlider',
    Routes.cupertinoSlidingSegmentedControl: '16 - CupertinoSlidingSegmentedControl',
    Routes.cupertinoSwitch: '17 - CupertinoSwitch',
    Routes.cupertinoTabScaffold: '18 - CupertinoTabScaffold',
    Routes.cupertinoTextField: '21 - CupertinoTextField',
  };

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(),
      child: ListView(children: [
        ...routeLabelsMap.entries.map(
          (keyValue) => Padding(
            padding: buttonPadding,
            child: CupertinoButton.filled(
              padding: buttonInnerPadding,
              onPressed: () => Navigator.pushNamed(context, keyValue.key),
              child: Text(keyValue.value),
            ),
          ),
        ),
      ]),
    );
  }
}
