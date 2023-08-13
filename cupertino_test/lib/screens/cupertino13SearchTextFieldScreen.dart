import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino13SearchTextFieldScreen extends StatefulWidget {
  @override
  _Cupertino13SearchTextFieldScreenState createState() => _Cupertino13SearchTextFieldScreenState();
}

class _Cupertino13SearchTextFieldScreenState extends State<Cupertino13SearchTextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoSearchTextField'),
      child: Center(child: Text('TODO')),
    );
  }
}
