import 'package:flutter/material.dart';

import 'screens.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MaincreenState();
}

class _MaincreenState extends State<MainScreen> {
  int _selectedTap = 0;

  void ChengeTab(int index){
    if (_selectedTap == index) return;
    setState(() {
      _selectedTap = index;
    });
  }

  static const List<Widget> _screenList = [
    ShopScreen(),
    CartScreen(),
    SettingsScreen(),
  ];

  static const List<String> _appBarList = [
    "Shop",
    "Cart",
    "Settings",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Text(
          _appBarList[_selectedTap]
        )),
        leading: null,
        actions: [SizedBox(width: 40,)],
      ),
      body: _screenList[_selectedTap],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTap,
        onTap: ChengeTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings"
          ),
        ],
      ),
    );
  }
}