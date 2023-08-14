import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino16SlidingSegmentedControlScreen extends StatefulWidget {
  @override
  _Cupertino16SlidingSegmentedControlScreenState createState() => _Cupertino16SlidingSegmentedControlScreenState();
}

class _Cupertino16SlidingSegmentedControlScreenState extends State<Cupertino16SlidingSegmentedControlScreen> {
  String? _currentText = null;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoSlidingSegmentedControl'),
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            CupertinoSlidingSegmentedControl(
              groupValue: _currentText,
              backgroundColor: CupertinoTheme.of(context).barBackgroundColor,
              thumbColor: CupertinoColors.systemOrange,
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
              onValueChanged: (String? value) => setState(() => _currentText = value),
            ),
            const SizedBox(height: 50),
            _currentText != null ? Text(_currentText!, style: TextStyle(fontSize: 20)) : Container(),
          ],
        ),
      ),
    );
  }
}
