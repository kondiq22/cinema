import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';
import 'screens/CardScreen.dart';
import 'screens/SettingsScreen.dart';
import 'screens/supporting/Navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigation(),
      routes: {
        Navigation.id: (context) => Navigation(),
        HomeScreen.id: (context) => HomeScreen(),
        CardScreen.id: (context) => CardScreen(),
        SettingsScreen.id: (context) => SettingsScreen(),

      },
    );
  }
}
