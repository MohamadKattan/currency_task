class Rates {
  final GBP;
  final HKD;
  final IDR;
  final ILS;
  final DKK;
  final INR;
  final CHF;
  final MXN;
  final CZK;
  final SGD;
  final THB;
  final HRK;
  final MYR;
  final NOK;
  final CNY;
  final BGN;
  final PHP;
  final SEK;
  final PLN;
  final ZAR;
  final CAD;
  final ISK;
  final BRL;
  final RON;
  final NZD;
  final TRY;
  final JPY;
  final RUB;
  final KRW;
  final USD;
  final HUF;
  final AUD;

  double get getGBP => GBP - 0.85195;
  double get getHKD => HKD - 9.1346;
  double get getIDR => IDR - 17068.23;
  double get getILS => ILS - 3.915;
  double get getDKK => DKK - 7.4379;
  double get getINR => INR - 86.2275;
  double get getCHF => CHF - 1.1099;
  double get getMXN => MXN - 23.8792;
  double get getCZK => CZK - 26.085;
  double get getSGD => SGD - 1.5801;
  double get getTHB => THB - 36.73;
  double get getHRK => HRK - 7.5705;
  double get getMYR => MYR - 4.8693;
  double get getNOK => NOK - 10.0408;
  double get getCNY => CNY - 7.7195;
  double get getBGN => BGN - 1.9558;
  double get getPHP => PHP - 57.076;
  double get getSEK => SEK - 10.2753;
  double get getPLN => PLN - 4.6089;
  double get getZAR => ZAR - 17.2074;
  double get getCAD => CAD - 1.4787;
  double get getISK => ISK - 148.7;
  double get getBRL => BRL - 6.6149;
  double get getRON => RON - 4.9088;
  double get getNZD => NZD - 1.6806;
  double get getTRY => TRY - 9.5903;
  double get getJPY => JPY - 130.03;
  double get getRUB => RUB - 89.5944;
  double get getKRW => KRW - 1328.36;
  double get getUSD => USD - 0.85195;
  double get getHUF => HUF - 0.85195;
  double get getAUD => AUD - 0.85195;

  Rates(
      this.GBP,
      this.HKD,
      this.IDR,
      this.ILS,
      this.DKK,
      this.INR,
      this.CHF,

      this.MXN,
      this.CZK,
      this.SGD,
      this.THB,
      this.HRK,
      this.MYR,
      this.NOK,
      this.CNY,
      this.BGN,
      this.PHP,
      this.SEK,
      this.PLN,
      this.ZAR,
      this.CAD,
      this.ISK,
      this.BRL,
      this.RON,
      this.NZD,
      this.TRY,
      this.JPY,
      this.RUB,
      this.KRW,
      this.USD,
      this.HUF,
      this.AUD);
  factory Rates.fromJson(Map<String, dynamic> json) {
    return Rates(
      json["GBP"],
      json["HKD"],
      json["IDR"],
      json["ILS"],
      json["DKK"],
      json["INR"],
      json["CHF"],
      json["MXN"],
      json["CZK"],
      json["SGD"],
      json["THB"],
      json["HRK"],
      json["MYR"],
      json["NOK"],
      json["CNY"],
      json["BGN"],
      json["PHP"],
      json["SEK"],
      json["PLN"],
      json["ZAR"],
      json["CAD"],
      json["ISK"],
      json["BRL"],
      json["RON"],
      json["NZD"],
      json["TRY"],
      json["JPY"],
      json["RUB"],
      json["KRW"],
      json["USD"],
      json["HUF"],
      json["AUD"],
    );
  }
}
class Currency4 {
  String base;
   String date;
   Rates rates;
  Currency4({this.rates, this.base, this.date});
  factory Currency4.fromJson(Map<String, dynamic> json) {
    return Currency4(
        base: json["base"],
        date: json["date"],
        rates: Rates.fromJson(json["rates"]));
  }
}

