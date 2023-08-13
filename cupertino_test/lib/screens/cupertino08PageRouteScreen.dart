import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino08PageRouteScreen extends StatefulWidget {
  @override
  _Cupertino08PageRouteScreenState createState() => _Cupertino08PageRouteScreenState();
}

class _Cupertino08PageRouteScreenState extends State<Cupertino08PageRouteScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoPageRoute'),
      child: Center(child: Text('TODO')),
    );
  }
}
