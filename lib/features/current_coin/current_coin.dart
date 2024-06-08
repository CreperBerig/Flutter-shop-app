// ignore_for_file: prefer_const_constructors

import 'package:crypto_app/features/crypto_list/widgets/crypto_line_char.dart';
import 'package:crypto_app/repositories/models/crypto_modul.dart';
import 'package:flutter/material.dart';

class CurrentCoin extends StatelessWidget {
  const CurrentCoin({super.key});

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    final coin = ModalRoute.of(context)!.settings.arguments as CryptoCoin;

    return Scaffold(
      appBar: AppBar(
        title: Text(coin.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${coin.prise} to', style: app_theme.textTheme.bodyLarge,),
            Text('${coin.precentChange}%',
              style: TextStyle(
                color: ((coin.precentChange == 0) ? Color.fromRGBO(126, 126, 143, 1) : ((coin.precentChange >= 0) ? Colors.green : Colors.red))
              ),
            ),
            Row(
              children: [
                Prise(to: 'EUR', prise: coin.USTtoEUR().toString(), app_theme: app_theme),
                Prise(to: 'RUB', prise: coin.USTtoRUB().toString(), app_theme: app_theme),
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(40),
                child: CoinChar(chartsData: coin.prisces),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), 
                  color: Theme.of(context).listTileTheme.tileColor,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(children: [
                          Text(coin.higtDay, style: app_theme.textTheme.bodyMedium,),
                          Text("HIGT DAY", style: app_theme.textTheme.bodySmall,)
                          ],),
                        Spacer(),
                        Column(children: [
                          Text(coin.lowDay, style: app_theme.textTheme.bodyMedium,),
                          Text("LOW DAY", style: app_theme.textTheme.bodySmall,)
                          ],),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}


class Prise extends StatelessWidget {
  final app_theme;
  final String to;
  final String prise;
  const Prise({super.key, required this.to, required this.prise, required this.app_theme});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).listTileTheme.tileColor,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(to, style: app_theme.textTheme.bodyMedium),
          Text(prise, style: app_theme.textTheme.labelSmall)
        ],
      ),
    );
  }
}