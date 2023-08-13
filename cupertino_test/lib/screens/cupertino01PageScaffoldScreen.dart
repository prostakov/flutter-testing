import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino01PageScaffoldScreen extends StatefulWidget {
  @override
  _Cupertino01PageScaffoldScreenState createState() => _Cupertino01PageScaffoldScreenState();
}

class _Cupertino01PageScaffoldScreenState extends State<Cupertino01PageScaffoldScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoPageScaffold'),
      child: const Center(child: Text('TODO')),
    );
  }
}
