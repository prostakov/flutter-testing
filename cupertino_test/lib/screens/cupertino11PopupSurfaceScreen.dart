import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino11PopupSurfaceScreen extends StatefulWidget {
  @override
  _Cupertino11PopupSurfaceScreenState createState() => _Cupertino11PopupSurfaceScreenState();
}

class _Cupertino11PopupSurfaceScreenState extends State<Cupertino11PopupSurfaceScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoPopupSurface'),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton.filled(
              child: Text('Click'),
              onPressed: () => showCupertinoModalPopup(
                context: context,
                builder: (BuildContext builder) => CupertinoPopupSurface(
                  child: Container(
                    color: CupertinoColors.white,
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 400,
                    child: Center(
                      child: CupertinoButton(
                        child: Text('Close'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
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
