import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino04AlertDialogScreen extends StatefulWidget {
  @override
  _Cupertino04AlertDialogScreenState createState() => _Cupertino04AlertDialogScreenState();
}

class _Cupertino04AlertDialogScreenState extends State<Cupertino04AlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoAlertDialog'),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoDialog<void>(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: Text('Attention'),
                content: Text('Are you sure you want to do this?'),
                actions: [
                  CupertinoDialogAction(
                    child: Text('Yes'),
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: Text('No'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            );
          },
          child: Text('Confirm'),
        ),
      ),
    );
  }
}
