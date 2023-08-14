import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino18TabScaffoldScreen extends StatefulWidget {
  @override
  _Cupertino18TabScaffoldScreenState createState() => _Cupertino18TabScaffoldScreenState();
}

class _Cupertino18TabScaffoldScreenState extends State<Cupertino18TabScaffoldScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoTabScaffold'),
      child: Center(child: Text('TODO')),
    );
  }
}
