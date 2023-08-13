import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino17SwitchScreen extends StatefulWidget {
  @override
  _Cupertino17SwitchScreenState createState() => _Cupertino17SwitchScreenState();
}

class _Cupertino17SwitchScreenState extends State<Cupertino17SwitchScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoSwitch'),
      child: Center(child: Text('TODO')),
    );
  }
}
