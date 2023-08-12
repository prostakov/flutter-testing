import 'package:cupertino_test/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultDrawer extends StatelessWidget {
  final String currentRouteUrl;

  DefaultDrawer(this.currentRouteUrl);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ListView(
                padding: const EdgeInsets.only(top: 100, left: 16, right: 16),
                children: [
                  _DrawerTile.create("Home", Routes.home, Icons.home, CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create("CupertinoPageScaffold", Routes.cupertinoPageScaffold, Icons.abc, CupertinoColors.activeOrange,
                      currentRouteUrl, context),
                  _DrawerTile.create("CupertinoActionSheetAction", Routes.cupertinoActionSheetAction, Icons.abc,
                      CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create("CupertinoActivityIndicator", Routes.cupertinoActivityIndicator, Icons.abc,
                      CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create("CupertinoAlertDialog", Routes.cupertinoAlertDialog, Icons.abc, CupertinoColors.activeOrange,
                      currentRouteUrl, context),
                  _DrawerTile.create(
                      "CupertinoButton", Routes.cupertinoButton, Icons.abc, CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create("CupertinoContextMenu", Routes.cupertinoContextMenu, Icons.abc, CupertinoColors.activeOrange,
                      currentRouteUrl, context),
                  _DrawerTile.create(
                      "CupertinoDatePicker", Routes.cupertinoDatePicker, Icons.abc, CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create(
                      "CupertinoPageRoute", Routes.cupertinoPageRoute, Icons.abc, CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create("CupertinoPageScaffold2", Routes.cupertinoPageScaffold2, Icons.abc, CupertinoColors.activeOrange,
                      currentRouteUrl, context),
                  _DrawerTile.create(
                      "CupertinoPicker", Routes.cupertinoPicker, Icons.abc, CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create("CupertinoPopupSurface", Routes.cupertinoPopupSurface, Icons.abc, CupertinoColors.activeOrange,
                      currentRouteUrl, context),
                  _DrawerTile.create(
                      "CupertinoScrollBar", Routes.cupertinoScrollBar, Icons.abc, CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create("CupertinoSearchTextField", Routes.cupertinoSearchTextField, Icons.abc, CupertinoColors.activeOrange,
                      currentRouteUrl, context),
                  _DrawerTile.create("CupertinoSegmentedControl", Routes.cupertinoSegmentedControl, Icons.abc, CupertinoColors.activeOrange,
                      currentRouteUrl, context),
                  _DrawerTile.create(
                      "CupertinoSlider", Routes.cupertinoSlider, Icons.abc, CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create("CupertinoSlidingSegmentedControl", Routes.cupertinoSlidingSegmentedControl, Icons.abc,
                      CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create(
                      "CupertinoSwitch", Routes.cupertinoSwitch, Icons.abc, CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create("CupertinoTabScaffold", Routes.cupertinoTabScaffold, Icons.abc, CupertinoColors.activeOrange,
                      currentRouteUrl, context),
                  _DrawerTile.create(
                      "CupertinoTabBar", Routes.cupertinoTabBar, Icons.abc, CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create(
                      "CupertinoTabView", Routes.cupertinoTabView, Icons.abc, CupertinoColors.activeOrange, currentRouteUrl, context),
                  _DrawerTile.create(
                      "CupertinoTextField", Routes.cupertinoTextField, Icons.abc, CupertinoColors.activeOrange, currentRouteUrl, context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;
  final Color iconColor;

  _DrawerTile({
    required this.title,
    required this.icon,
    required this.onTap,
    this.isSelected = false,
    this.iconColor = CupertinoColors.systemOrange,
  });

  static _DrawerTile create(
    String routeName,
    String routeUrl,
    IconData icon,
    Color iconColor,
    String currentRouteUrl,
    BuildContext buildContext,
  ) {
    return _DrawerTile(
      title: routeName,
      icon: icon,
      onTap: () {
        if (currentRouteUrl != routeUrl) {
          Navigator.pushNamed(buildContext, routeUrl);
        }
      },
      iconColor: iconColor,
      isSelected: currentRouteUrl == routeUrl ? true : false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isSelected ? CupertinoColors.systemOrange : Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Row(
            children: [
              Icon(icon, size: 20, color: isSelected ? Colors.white : iconColor),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    letterSpacing: .3,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: isSelected ? Colors.white : CupertinoColors.systemOrange,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
