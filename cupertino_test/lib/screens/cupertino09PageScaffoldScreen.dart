import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino09PageScaffoldScreen extends StatefulWidget {
  @override
  _Cupertino09PageScaffoldScreenState createState() => _Cupertino09PageScaffoldScreenState();
}

class _Cupertino09PageScaffoldScreenState extends State<Cupertino09PageScaffoldScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoPageScaffold'),
      child: Center(child: Text('TODO')),
    );
  }
}
