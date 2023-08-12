import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      leading: GestureDetector(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Icon(Icons.menu),
      ),
      middle: const Text("Cupertino App"),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55.0);
}
