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
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: Offset(0, 1), // Adjust the vertical offset as needed
              child: Text('Share'),
            ),
            SizedBox(width: 5),
            Icon(CupertinoIcons.share),
          ],
        ),
      ),
    );
  }
}
