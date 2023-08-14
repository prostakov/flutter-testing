import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino14SegmentedControlScreen extends StatefulWidget {
  @override
  _Cupertino14SegmentedControlScreenState createState() => _Cupertino14SegmentedControlScreenState();
}

class _Cupertino14SegmentedControlScreenState extends State<Cupertino14SegmentedControlScreen> {
  String? _currentText = null;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoSegmentedControl'),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            CupertinoSegmentedControl(
              groupValue: _currentText,
              selectedColor: CupertinoColors.systemOrange,
              unselectedColor: CupertinoTheme.of(context).barBackgroundColor,
              borderColor: CupertinoColors.activeOrange,
              pressedColor: CupertinoColors.systemOrange.withOpacity(0.5),
              children: {
                "Twitter": Container(
                  child: Text("Twitter"),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                ),
                "YouTube": Container(
                  child: Text("YouTube"),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                ),
                "Instagram": Container(
                  child: Text("Instagram"),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                ),
              },
              onValueChanged: (String value) => setState(() => _currentText = value),
            ),
            const SizedBox(height: 50),
            _currentText != null ? Text(_currentText!, style: TextStyle(fontSize: 20)) : Container(),
          ],
        ),
      ),
    );
  }
}
