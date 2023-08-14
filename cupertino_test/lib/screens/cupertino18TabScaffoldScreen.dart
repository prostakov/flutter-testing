import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino18TabScaffoldScreen extends StatefulWidget {
  @override
  _Cupertino18TabScaffoldScreenState createState() => _Cupertino18TabScaffoldScreenState();
}

class _Cupertino18TabScaffoldScreenState extends State<Cupertino18TabScaffoldScreen> {
  double _currentValue = 2;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoTabScaffold'),
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
