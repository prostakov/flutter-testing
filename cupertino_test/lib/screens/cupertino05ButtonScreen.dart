import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino05ButtonScreen extends StatefulWidget {
  @override
  _Cupertino05ButtonScreenState createState() => _Cupertino05ButtonScreenState();
}

class _Cupertino05ButtonScreenState extends State<Cupertino05ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoButton'),
      child: Center(child: Text('TODO')),
    );
  }
}