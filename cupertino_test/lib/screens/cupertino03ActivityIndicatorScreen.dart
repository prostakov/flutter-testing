import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino03ActivityIndicatorScreen extends StatefulWidget {
  @override
  _Cupertino03ActivityIndicatorScreenState createState() => _Cupertino03ActivityIndicatorScreenState();
}

class _Cupertino03ActivityIndicatorScreenState extends State<Cupertino03ActivityIndicatorScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoActivityIndicator'),
      child: Center(child: Text('TODO')),
    );
  }
}
