import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino15SliderScreen extends StatefulWidget {
  @override
  _Cupertino15SliderScreenState createState() => _Cupertino15SliderScreenState();
}

class _Cupertino15SliderScreenState extends State<Cupertino15SliderScreen> {
  double _currentValue = 2;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoSlider'),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text('${_currentValue}'),
            const SizedBox(height: 50),
            CupertinoSlider(
              value: _currentValue,
              min: 0,
              max: 10,
              divisions: 10,
              onChanged: (value) => setState(() => _currentValue = value),
            )
          ],
        ),
      ),
    );
  }
}
