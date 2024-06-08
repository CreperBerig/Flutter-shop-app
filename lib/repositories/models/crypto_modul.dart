class CryptoCoin {
  final String name;
  final String prise;
  final String imagePath;
  final String symbol;
  final List<double> prisces;
  final double precentChange;
  final String lowDay;
  final String higtDay;

  CryptoCoin({
    required this.imagePath,
    required this.name,
    required this.prise,
    required this.symbol,
    required this.prisces,
    required this.precentChange,
    required this.higtDay,
    required this.lowDay,
  });

  factory CryptoCoin.fromJson(String name, Map<String, dynamic> json){

    double convertPrise(String price){
      return double.parse(price.replaceAll(RegExp(r'[^0-9.]'), '')) ?? 0.0;
    }

    List<double> prisces = [
      convertPrise(json['USD']['OPEN24HOUR']),
      convertPrise(json['USD']['OPENDAY']),
      convertPrise(json['USD']['OPENHOUR']),
      convertPrise(json['USD']['PRICE']),
    ];

    return CryptoCoin(
      imagePath: json['USD']['IMAGEURL'],
      name: name,
      prise: json['USD']['PRICE'],
      symbol: json['USD']['FROMSYMBOL'],
      prisces: prisces,
      precentChange: convertPrise(json['USD']['CHANGEPCTDAY']),
      higtDay: json['USD']['HIGHDAY'],
      lowDay: json['USD']['LOWDAY'],
    );
  }

  double convertPrise(String price){
    return double.parse(price.replaceAll(RegExp(r'[^-0-9.]'), ''));
  }

  double USTtoRUB(){
    return convertPrise(prise) * 88.69;
  }

  double USTtoEUR(){
    return convertPrise(prise) * 0.9195;
  }
}

