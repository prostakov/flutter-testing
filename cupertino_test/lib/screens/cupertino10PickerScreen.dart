import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino10PickerScreen extends StatefulWidget {
  @override
  _Cupertino10PickerScreenState createState() => _Cupertino10PickerScreenState();
}

class _Cupertino10PickerScreenState extends State<Cupertino10PickerScreen> {
  int _selectedValue = 10;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoPicker'),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton.filled(
              child: Text('Current selected value: ${_selectedValue}'),
              onPressed: () => showCupertinoModalPopup(
                context: context,
                builder: (_) => SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: CupertinoPicker(
                    itemExtent: 30,
                    scrollController: FixedExtentScrollController(initialItem: _selectedValue),
                    children: [for (var i = 0; i <= 30; i++) Text("${i}")],
                    onSelectedItemChanged: (int value) => setState(() => _selectedValue = value),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
