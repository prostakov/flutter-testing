import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino05ButtonScreen extends StatefulWidget {
  @override
  _Cupertino05ButtonScreenState createState() => _Cupertino05ButtonScreenState();
}

class _Cupertino05ButtonScreenState extends State<Cupertino05ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoButton'),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              onPressed: () {},
              child: Text('Button 1'),
            ),
            const SizedBox(height: 40),
            CupertinoButton.filled(
              onPressed: () {},
              child: Text('Button 2'),
            ),
          ],
        ),
      ),
    );
  }
}
