import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino15SliderScreen extends StatefulWidget {
  @override
  _Cupertino15SliderScreenState createState() => _Cupertino15SliderScreenState();
}

class _Cupertino15SliderScreenState extends State<Cupertino15SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoSlider'),
      child: Center(child: Text('TODO')),
    );
  }
}
