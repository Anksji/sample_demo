import 'package:demoapp/screens/screen_1.dart';
import 'package:flutter/material.dart';

import 'navigation_bar.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task"),),
      body: BottomNavigation(),
    );
  }
}
