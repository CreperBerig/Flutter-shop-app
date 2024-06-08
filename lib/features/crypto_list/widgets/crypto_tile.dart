import 'package:crypto_app/repositories/repositories.dart';
import 'package:flutter/material.dart';

class CryptoTile extends StatelessWidget {
  final CryptoCoin coin;
  const CryptoTile({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coin.name,
                  style: app_theme.textTheme.bodyMedium,
                ),
                /*Text(
                  coin.shortName,
                  style: app_theme.textTheme.labelSmall,
                ),*/
              ],
            ),
            Spacer(),
            Text(
              coin.prise,
              style: app_theme.textTheme.bodyMedium,
            )
          ],
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: app_theme.listTileTheme.iconColor,
        ),
        leading: coin.imagePath == null
          ? SizedBox()
          : Image.network('https://www.cryptocompare.com/${coin.imagePath}'),
        onTap: () {
          Navigator.pushNamed(context, '/current_coin_screen', arguments: coin);
        },
      ),
    );
  }
}