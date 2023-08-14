import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino21TextFieldScreen extends StatefulWidget {
  @override
  _Cupertino21TextFieldScreenState createState() => _Cupertino21TextFieldScreenState();
}

class _Cupertino21TextFieldScreenState extends State<Cupertino21TextFieldScreen> {
  final TextEditingController _textEditingController = new TextEditingController(text: "Some text");
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoTextField'),
      child: Center(
        child: CupertinoTextField(
          controller: _textEditingController,
        ),
      ),
    );
  }
}
