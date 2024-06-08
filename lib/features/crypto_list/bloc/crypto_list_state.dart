part of 'crypto_list_bloc.dart';

abstract class CryptoState{
  const CryptoState();
}

class CryptoInitial extends CryptoState{}

class CruptoLoading extends CryptoState{}

class CryptoListLoadSuccess extends CryptoState{
  final List<CryptoCoin> coins;

  CryptoListLoadSuccess({required this.coins});
}

class CryptoLoadFailure extends CryptoState{
  final String error;

  CryptoLoadFailure({required this.error});
}