import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino06ContextMenuScreen extends StatefulWidget {
  @override
  _Cupertino06ContextMenuScreenState createState() => _Cupertino06ContextMenuScreenState();
}

class _Cupertino06ContextMenuScreenState extends State<Cupertino06ContextMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoContextMenu'),
      child: Center(child: Text('TODO')),
    );
  }
}
