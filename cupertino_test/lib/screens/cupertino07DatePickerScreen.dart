import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino07DatePickerScreen extends StatefulWidget {
  @override
  _Cupertino07DatePickerScreenState createState() => _Cupertino07DatePickerScreenState();
}

class _Cupertino07DatePickerScreenState extends State<Cupertino07DatePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoDatePicker'),
      child: Center(child: Text('TODO')),
    );
  }
}
