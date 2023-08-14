import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino12ScrollBarScreen extends StatefulWidget {
  @override
  _Cupertino12ScrollBarScreenState createState() => _Cupertino12ScrollBarScreenState();
}

class _Cupertino12ScrollBarScreenState extends State<Cupertino12ScrollBarScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: DefaultHeader(title: 'CupertinoScrollBar'),
      child: CupertinoScrollbar(
        thickness: 15,
        thicknessWhileDragging: 20,
        radius: Radius.circular(20),
        radiusWhileDragging: Radius.circular(10),
        child: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) => Center(
                  child: Text("Item ${index}", style: TextStyle(fontSize: 15)),
                )),
      ),
    );
  }
}
