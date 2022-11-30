import 'package:diw/pages/home.dart';
import 'package:flutter/material.dart';


class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final List<Map<String, Object>> pages = [
    {
      'page': HomePage(),
      'title': 'Home',
    },
    {
      'page': Center(child: Text('Access'),),
      'title': 'Manage Access',
    }
  ];

  int _selectedPage = 0;
  void selectPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: MainDrawer(),
      body: pages[_selectedPage]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
          onTap: selectPage,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Theme.of(context).primaryColor,
          currentIndex: _selectedPage,
          //type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_accessibility),
              label: 'Access',
            )
          ]),
    );
  }
}
