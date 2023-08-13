import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino10PickerScreen extends StatefulWidget {
  @override
  _Cupertino10PickerScreenState createState() => _Cupertino10PickerScreenState();
}

class _Cupertino10PickerScreenState extends State<Cupertino10PickerScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoPicker'),
      child: Center(child: Text('TODO')),
    );
  }
}
