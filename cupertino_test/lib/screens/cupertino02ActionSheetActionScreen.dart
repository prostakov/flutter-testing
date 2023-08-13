import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino02ActionSheetActionScreen extends StatefulWidget {
  @override
  _Cupertino02ActionSheetActionScreenState createState() => _Cupertino02ActionSheetActionScreenState();
}

class _Cupertino02ActionSheetActionScreenState extends State<Cupertino02ActionSheetActionScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoActionSheetAction'),
      child: Center(
        child: CupertinoButton(
          child: Text('CupertinoActionSheetAction'),
          onPressed: () {
            showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) => CupertinoActionSheet(
                      title: Text('Select option:'),
                      actions: [
                        CupertinoActionSheetAction(
                          child: Text('Option 1'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Text('Option 2'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ));
          },
        ),
      ),
    );
  }
}
