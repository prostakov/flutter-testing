import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino06ContextMenuScreen extends StatefulWidget {
  @override
  _Cupertino06ContextMenuScreenState createState() => _Cupertino06ContextMenuScreenState();
}

class _Cupertino06ContextMenuScreenState extends State<Cupertino06ContextMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoContextMenu'),
      child: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png',
            ),
            actions: [
              CupertinoContextMenuAction(
                child: Text('Action 1'),
                onPressed: () => Navigator.pop(context),
              ),
              CupertinoContextMenuAction(
                child: Text('Action 2'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
