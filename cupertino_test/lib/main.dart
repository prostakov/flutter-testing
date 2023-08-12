import 'package:cupertino_test/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'constants/routes.dart';
import 'package:cupertino_test/screens/cupertino01PageScaffoldScreen.dart';
import 'package:cupertino_test/screens/cupertino02ActionSheetActionScreen.dart';
import 'package:cupertino_test/screens/cupertino03ActivityIndicatorScreen.dart';
import 'package:cupertino_test/screens/cupertino04AlertDialogScreen.dart';
import 'package:cupertino_test/screens/cupertino05ButtonScreen.dart';
import 'package:cupertino_test/screens/cupertino06ContextMenuScreen.dart';
import 'package:cupertino_test/screens/cupertino07DatePickerScreen.dart';
import 'package:cupertino_test/screens/cupertino08PageRouteScreen.dart';
import 'package:cupertino_test/screens/cupertino09PageScaffoldScreen.dart';
import 'package:cupertino_test/screens/cupertino10PickerScreen.dart';
import 'package:cupertino_test/screens/cupertino11PopupSurfaceScreen.dart';
import 'package:cupertino_test/screens/cupertino12ScrollBarScreen.dart';
import 'package:cupertino_test/screens/cupertino13SearchTextFieldScreen.dart';
import 'package:cupertino_test/screens/cupertino14SegmentedControlScreen.dart';
import 'package:cupertino_test/screens/cupertino15SliderScreen.dart';
import 'package:cupertino_test/screens/cupertino16SlidingSegmentedControlScreen.dart';
import 'package:cupertino_test/screens/cupertino17SwitchScreen.dart';
import 'package:cupertino_test/screens/cupertino18TabScaffoldScreen.dart';
import 'package:cupertino_test/screens/cupertino19TabBarScreen.dart';
import 'package:cupertino_test/screens/cupertino20TabViewScreen.dart';
import 'package:cupertino_test/screens/cupertino21TextFielScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: CupertinoColors.systemGrey2,
        primaryColor: CupertinoColors.systemOrange,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // home: CupertinoPageScaffold(
      //   navigationBar: CupertinoNavigationBar(
      //     middle: Text('Cupertino App'),
      //   ),
      //   child: Center(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Transform.translate(
      //           offset: Offset(0, 1), // Adjust the vertical offset as needed
      //           child: Text('Share'),
      //         ),
      //         SizedBox(width: 5),
      //         Icon(CupertinoIcons.share),
      //       ],
      //     ),
      //   ),
      // ),
      initialRoute: Routes.home,
      routes: <String, WidgetBuilder>{
        Routes.home: (BuildContext context) => HomeScreen(),
        Routes.cupertinoPageScaffold: (BuildContext context) => Cupertino01PageScaffoldScreen(),
        Routes.cupertinoActionSheetAction: (BuildContext context) => Cupertino02ActionSheetActionScreen(),
        Routes.cupertinoActivityIndicator: (BuildContext context) => Cupertino03ActivityIndicatorScreen(),
        Routes.cupertinoAlertDialog: (BuildContext context) => Cupertino04AlertDialogScreen(),
        Routes.cupertinoButton: (BuildContext context) => Cupertino05ButtonScreen(),
        Routes.cupertinoContextMenu: (BuildContext context) => Cupertino06ContextMenuScreen(),
        Routes.cupertinoDatePicker: (BuildContext context) => Cupertino07DatePickerScreen(),
        Routes.cupertinoPageRoute: (BuildContext context) => Cupertino08PageRouteScreen(),
        Routes.cupertinoPageScaffold2: (BuildContext context) => Cupertino09PageScaffoldScreen(),
        Routes.cupertinoPicker: (BuildContext context) => Cupertino10PickerScreen(),
        Routes.cupertinoPopupSurface: (BuildContext context) => Cupertino11PopupSurfaceScreen(),
        Routes.cupertinoScrollBar: (BuildContext context) => Cupertino12ScrollBarScreen(),
        Routes.cupertinoSearchTextField: (BuildContext context) => Cupertino13SearchTextFieldScreen(),
        Routes.cupertinoSegmentedControl: (BuildContext context) => Cupertino14SegmentedControlScreen(),
        Routes.cupertinoSlider: (BuildContext context) => Cupertino15SliderScreen(),
        Routes.cupertinoSlidingSegmentedControl: (BuildContext context) => Cupertino16SlidingSegmentedControlScreen(),
        Routes.cupertinoSwitch: (BuildContext context) => Cupertino17SwitchScreen(),
        Routes.cupertinoTabScaffold: (BuildContext context) => Cupertino18TabScaffoldScreen(),
        Routes.cupertinoTabBar: (BuildContext context) => Cupertino19TabBarScreen(),
        Routes.cupertinoTabView: (BuildContext context) => Cupertino20TabViewScreen(),
        Routes.cupertinoTextField: (BuildContext context) => Cupertino21TextFielScreen(),
      },
      onGenerateRoute: (settings) {
        return null;
      },
    );
  }
}
