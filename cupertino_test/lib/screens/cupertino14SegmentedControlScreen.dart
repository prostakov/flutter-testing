import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino14SegmentedControlScreen extends StatefulWidget {
  @override
  _Cupertino14SegmentedControlScreenState createState() => _Cupertino14SegmentedControlScreenState();
}

class _Cupertino14SegmentedControlScreenState extends State<Cupertino14SegmentedControlScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoSegmentedControl'),
      child: Center(child: Text('TODO')),
    );
  }
}
