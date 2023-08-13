import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino20TabViewScreen extends StatefulWidget {
  @override
  _Cupertino20TabViewScreenState createState() => _Cupertino20TabViewScreenState();
}

class _Cupertino20TabViewScreenState extends State<Cupertino20TabViewScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoTabView'),
      child: Center(child: Text('TODO')),
    );
  }
}
