import 'package:crypto_app/repositories/models/crypto_modul.dart';
import 'package:dio/dio.dart';

class CryptoServise{
  final Dio _dio = Dio();
  final URL =
    'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,TON,NOT,XRP,DOGE,SOL,CBDC&tsyms=USD';

  Future<List<CryptoCoin>> fetchCriptoData() async {
    try{
      final response = await _dio.get(URL);

      if (response.statusCode == 200){
        final data = response.data;
        final displayData = data['DISPLAY'] as Map<String, dynamic>;

    return displayData.keys.map((key) => CryptoCoin.fromJson(key, displayData[key])).toList();
        
      } else {
        throw Exception("Failed to load data: ${response.statusCode}");
      }

    } catch(e) {
      throw Exception("Failed to load data: ${e}");
    }
  }
}