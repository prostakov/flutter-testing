import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertino07DatePickerScreen extends StatefulWidget {
  @override
  _Cupertino07DatePickerScreenState createState() => _Cupertino07DatePickerScreenState();
}

class _Cupertino07DatePickerScreenState extends State<Cupertino07DatePickerScreen> {
  DateTime dateTime = DateTime(2100, 1, 1);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoDatePicker'),
      child: Center(
        child: CupertinoButton.filled(
          child: Text('Select Date'),
          onPressed: () {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) => SizedBox(
                height: 250,
                child: CupertinoDatePicker(
                  initialDateTime: dateTime,
                  mode: CupertinoDatePickerMode.date,
                  use24hFormat: true,
                  onDateTimeChanged: (DateTime newDate) {
                    setState(() => dateTime = newDate);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
