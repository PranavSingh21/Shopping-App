import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


import 'pages/home_page.dart';

void main() {
  runApp(VxState(
    
    
    store: MyStore()
    ,
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}