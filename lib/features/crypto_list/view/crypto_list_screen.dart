import 'package:crypto_app/features/crypto_list/widgets/crypto_list_widget.dart';
import 'package:flutter/material.dart';

class CryptoListScreen extends StatelessWidget {
  const CryptoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return Scaffold(
    appBar: AppBar(
      title: Center(child: Text('Crypto List')),
    ),
    body: CryptoList(),
    );
  }
}
