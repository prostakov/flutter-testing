import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino19TabBarScreen extends StatefulWidget {
  @override
  _Cupertino19TabBarScreenState createState() => _Cupertino19TabBarScreenState();
}

class _Cupertino19TabBarScreenState extends State<Cupertino19TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoTabBar'),
      child: Center(child: Text('TODO')),
    );
  }
}
