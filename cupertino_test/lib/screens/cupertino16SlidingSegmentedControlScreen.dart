import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino16SlidingSegmentedControlScreen extends StatefulWidget {
  @override
  _Cupertino16SlidingSegmentedControlScreenState createState() => _Cupertino16SlidingSegmentedControlScreenState();
}

class _Cupertino16SlidingSegmentedControlScreenState extends State<Cupertino16SlidingSegmentedControlScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoSlidingSegmentedControl'),
      child: Center(child: Text('TODO')),
    );
  }
}
