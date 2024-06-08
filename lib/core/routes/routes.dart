import 'package:crypto_app/features/crypto_list/bloc/crypto_list_bloc.dart';
import 'package:crypto_app/features/crypto_list/view/crypto_list_screen.dart';
import 'package:crypto_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/current_coin/view.dart';

final routes = {
  '/' : (context) => BlocProvider(
    create: (context) => CryptoBloc(CryptoServise()),
    child: CryptoListScreen(),
  ),
  '/current_coin_screen' : (context) => CurrentCoin(),
};