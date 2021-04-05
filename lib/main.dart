
import 'package:currency_task/Provider/Provide.dart';
import 'package:currency_task/all_screen/home_page.dart';
import 'package:currency_task/all_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CurrencyProvider(),
      child: MaterialApp(
        title: "Currency",
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
