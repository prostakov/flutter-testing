import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';

class Cupertino09PageScaffoldScreen extends StatefulWidget {
  @override
  _Cupertino09PageScaffoldScreenState createState() => _Cupertino09PageScaffoldScreenState();
}

class _Cupertino09PageScaffoldScreenState extends State<Cupertino09PageScaffoldScreen> {
  String backgroundImageUrl = "https://i.pinimg.com/originals/c0/40/7f/c0407fadd8f5db63c3d8e35295fa7941.jpg";
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey.withOpacity(0.4),
        middle: Text("CupertinoPageScaffold"),
      ),
      child: Stack(
        children: [
          Image.network(
            backgroundImageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
        ],
      ),
    );
  }
}
