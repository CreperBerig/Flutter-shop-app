part of 'crypto_list_bloc.dart';

abstract class CryptoEvent{
  const CryptoEvent();
}

class LoadCryptoList extends CryptoEvent {}