import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static final id = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Ekran Główny'),
    );
  }
}