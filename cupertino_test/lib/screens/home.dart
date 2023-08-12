import 'package:cupertino_test/constants/routes.dart';
import 'package:cupertino_test/widgets/default_drawer.dart';
import 'package:cupertino_test/widgets/default_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultHeader(),
      drawer: DefaultDrawer(Routes.home),
      body: Center(child: Text('Home Page')),
    );
  }
}
