import 'package:flutter/material.dart';
import 'package:cinema/screens/HomeScreen.dart';
import 'package:cinema/screens/CardScreen.dart';
import 'package:cinema/screens/SettingsScreen.dart';

class Navigation extends StatefulWidget {
  static final id = 'Navigation';
  Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 1;
  List<Widget> pages = [CardScreen(), HomeScreen(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('KINO!!!'),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    child: Icon(
                      Icons.local_play,
                      size: _selectedIndex == 0 ? 35 : 25,
                      color: _selectedIndex == 0 ? Colors.red : Colors.grey,
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    child: Icon(
                      Icons.home,
                      size: _selectedIndex == 1 ? 35 : 25,
                      color: _selectedIndex == 1 ? Colors.red : Colors.grey,
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    child: Icon(
                      Icons.settings,
                      size: _selectedIndex == 2 ? 35 : 25,
                      color: _selectedIndex == 2 ? Colors.red : Colors.grey,
                    ))
              ],
            ),
          )),
    );
  }
}
