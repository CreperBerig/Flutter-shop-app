import 'package:flutter/material.dart';
import 'package:shop_app/widgets/custom_icon_button.dart';

class WelcomSreen extends StatelessWidget {
  const WelcomSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: Theme.of(context).colorScheme.tertiary,
              size: 72,
            ),
            SizedBox(height: 15,),
            Text(
              "MINIMAL SHOP",
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            SizedBox(height: 4,),
            Text(
              "Made widh Flutter ♡",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            SizedBox(height: 4,),
            CustomIconButton(
              onTap: () {
                Navigator.pushNamed(context, '/main_screen');
              },
              icon: Icon(Icons.arrow_forward, color: Theme.of(context).colorScheme.tertiary,),
            )
          ],
        ),
      )
    );
  }
}