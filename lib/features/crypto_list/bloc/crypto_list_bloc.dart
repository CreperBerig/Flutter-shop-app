import 'package:crypto_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'crypto_list_event.dart';
part 'crypto_list_state.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  final CryptoServise repository;
  CryptoBloc(this.repository) : super(CryptoInitial()) {
    on<LoadCryptoList>((event, emit) async {
      emit(CruptoLoading());
      try{
        final cryptoList = await repository.fetchCriptoData();
        emit(CryptoListLoadSuccess(coins: cryptoList));
      } catch (e){
        emit(CryptoLoadFailure(error: e.toString()));
      }
    },);
  }
}