import 'package:cupertino_test/constants/routes.dart';
import 'package:flutter/cupertino.dart';

class DefaultHeader extends StatelessWidget implements ObstructingPreferredSizeWidget {
  String title;

  DefaultHeader({this.title = 'Cupertino App'});

  @override
  Widget build(BuildContext context) {
    var isHomePage = ModalRoute.of(context)?.settings.name == Routes.home;
    return CupertinoNavigationBar(
      leading: isHomePage
          ? null
          : GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(CupertinoIcons.left_chevron),
            ),
      middle: Text(title),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(55.0);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}
