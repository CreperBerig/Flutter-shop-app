import 'package:flutter/material.dart';
import 'package:shop_app/screens/main_screen.dart';
import 'package:shop_app/theme/litht_theme.dart';

import 'screens/welcome_page.dart';

void main() {
  runApp(const MarketApp());
}

class MarketApp extends StatelessWidget {
  const MarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ligthMode,
      routes: {
        '/': (context) => WelcomSreen(),
        '/main_screen': (context) => MainScreen(),
      },
    );
  }
}


