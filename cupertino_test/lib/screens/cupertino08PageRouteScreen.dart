import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino08PageRouteScreen extends StatefulWidget {
  @override
  _Cupertino08PageRouteScreenState createState() => _Cupertino08PageRouteScreenState();
}

class _Cupertino08PageRouteScreenState extends State<Cupertino08PageRouteScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoButton'),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton.filled(
              onPressed: () => Navigator.of(context).push(CupertinoPageRoute(
                builder: (BuildContext context) => AnotherPage(),
              )),
              child: Text('Navigate to other page'),
            ),
          ],
        ),
      ),
    );
  }
}

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Center(child: Text('Some other page'));
  }
}
