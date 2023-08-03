import 'package:demoapp/screens/screen3.dart';
import 'package:demoapp/screens/screen_1.dart';
import 'package:demoapp/screens/screen_2.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int selectedIndex=0;
  static final List<Widget>myScreens=[
    const Screen1(),
    const Screen2(),
    const Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title"),),
      body: myScreens[selectedIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Colors.transparent
        ),
        child: NavigationBar(
          height: 52,
          onDestinationSelected: (index)=>
          setState(() {
            selectedIndex=index;
          }),
          destinations: const[
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.sync), label: 'Sync'),
            NavigationDestination(icon: Icon(Icons.access_alarm), label: 'Alarm'),
          ],

        ),
      ),
    );
  }
}
