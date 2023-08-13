import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino04AlertDialogScreen extends StatefulWidget {
  @override
  _Cupertino04AlertDialogScreenState createState() => _Cupertino04AlertDialogScreenState();
}

class _Cupertino04AlertDialogScreenState extends State<Cupertino04AlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoAlertDialog'),
      child: Center(child: Text('TODO')),
    );
  }
}
