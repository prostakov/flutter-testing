import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino12ScrollBarScreen extends StatefulWidget {
  @override
  _Cupertino12ScrollBarScreenState createState() => _Cupertino12ScrollBarScreenState();
}

class _Cupertino12ScrollBarScreenState extends State<Cupertino12ScrollBarScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoScrollBar'),
      child: Center(child: Text('TODO')),
    );
  }
}
