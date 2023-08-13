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
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(),
      child: ListView(children: [
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoPageScaffold),
            child: const Text('CupertinoPageScaffold'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoActionSheetAction),
            child: const Text('CupertinoActionSheetAction'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoActivityIndicator),
            child: const Text('CupertinoActivityIndicator'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoAlertDialog),
            child: const Text('CupertinoAlertDialog'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoButton),
            child: const Text('CupertinoButton'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoContextMenu),
            child: const Text('CupertinoContextMenu'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoDatePicker),
            child: const Text('CupertinoDatePicker'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoPageRoute),
            child: const Text('CupertinoPageRoute'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoPageScaffold2),
            child: const Text('CupertinoPageScaffold2'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoPicker),
            child: const Text('CupertinoPicker'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoPopupSurface),
            child: const Text('CupertinoPopupSurface'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoScrollBar),
            child: const Text('CupertinoScrollBar'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoSearchTextField),
            child: const Text('CupertinoSearchTextField'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoSegmentedControl),
            child: const Text('CupertinoSegmentedControl'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoSlider),
            child: const Text('CupertinoSlider'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoSlidingSegmentedControl),
            child: const Text('CupertinoSlidingSegmentedControl'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoSwitch),
            child: const Text('CupertinoSwitch'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoTabScaffold),
            child: const Text('CupertinoTabScaffold'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoTabBar),
            child: const Text('CupertinoTabBar'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoTabView),
            child: const Text('CupertinoTabView'),
          ),
        ),
        Padding(
          padding: buttonPadding,
          child: CupertinoButton.filled(
            onPressed: () => Navigator.pushNamed(context, Routes.cupertinoTextField),
            child: const Text('CupertinoTextField'),
          ),
        ),
      ]),
    );
  }
}
