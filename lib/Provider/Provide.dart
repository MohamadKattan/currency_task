import 'package:currency_task/model/currency_prices.dart';
import 'package:flutter/cupertino.dart';

class CurrencyProvider extends ChangeNotifier {
  Currency4 currency4;
  updateCurrency(Currency4 allCurrency) {
    currency4 = allCurrency;
    notifyListeners();
  }
}
