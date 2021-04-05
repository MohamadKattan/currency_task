
import 'package:currency_task/Provider/Provide.dart';
import 'package:currency_task/Widget/custom_Circular.dart';
import 'package:currency_task/Widget/custom_list_title.dart';
import 'package:currency_task/model/currency_prices.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    save();
  }

  @override
  Widget build(BuildContext context) {
    var currencyProvide=Provider.of<CurrencyProvider>(context);
    Currency4 currency4 = Currency4();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        title: Text("Currency",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white)),
      ),
      body: Container(
        child: FutureBuilder(
          future:getData(),
          builder: (BuildContext context,AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView(children: [
                SizedBox(height: 10,),
                CustomListTitle(
                  currency:"GBP ${currencyProvide.currency4.rates.GBP.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"AUD ${currencyProvide.currency4.rates.AUD.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"BGN ${currencyProvide.currency4.rates.BGN.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"GBP ${currencyProvide.currency4.rates.GBP.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"BRL ${currencyProvide.currency4.rates.BRL.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"CAD ${currencyProvide.currency4.rates.CAD.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"CHF ${currencyProvide.currency4.rates.CHF.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"CNY ${currencyProvide.currency4.rates.CNY.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"CZK ${currencyProvide.currency4.rates.CZK.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"DKK ${currencyProvide.currency4.rates.DKK.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"INR ${currencyProvide.currency4.rates.INR.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"GBP ${currencyProvide.currency4.rates.GBP.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                CustomListTitle(
                  currency:"TRY ${currencyProvide.currency4.rates.TRY.toString()}",
                  date:  currencyProvide.currency4.date,
                  base: currencyProvide.currency4.base ,
                ),
                ///if yo want you can add more currency
              ]);
            } else if (snapshot.hasError) {
              return Center(child: Text("Error"));
            } else {
              return CustomCircular();
            }
          },
        ),
      ),
    );
  }
  Future<dynamic> getData() async {
    final response = await http.get('https://api.ratesapi.io/api/latest');
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return  Currency4.fromJson(jsonResponse);
    } else {
      throw Exception("error ");
    }
  }
  Future<void>save()async{
    Currency4 currency4 = await getData();
    await Provider.of<CurrencyProvider>(context,listen: false).updateCurrency(currency4);
  }
}
