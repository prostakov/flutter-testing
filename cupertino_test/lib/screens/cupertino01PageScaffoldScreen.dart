import 'package:flutter/cupertino.dart';

class Cupertino01PageScaffoldScreen extends StatefulWidget {
  @override
  _Cupertino01PageScaffoldScreenState createState() => _Cupertino01PageScaffoldScreenState();
}

class _Cupertino01PageScaffoldScreenState extends State<Cupertino01PageScaffoldScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(CupertinoIcons.left_chevron),
        ),
        middle: const Text("Kurwa!"),
      ),
      child: Center(child: Text('Kurwa Bleat!')),
    );
  }
}
