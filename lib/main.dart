import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override //
  Widget build(BuildContext context) {
    // double pi = 3.14;
    // bool isMale = true;
    // num temp = 30.5;

    // var day = "tuesday"; //auto detection of type
    // const pi = 3.14; // constant value

    return  MaterialApp(
     
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      
      darkTheme: MyThemes.darkTheme(context),
      
      initialRoute: MyRoutes.homeRoute,
        routes: {

          "/" : (context)=>  const LoginPage(),
          MyRoutes.homeRoute: (context) =>const HomePage(),
          MyRoutes.loginRoute: (context)=> const LoginPage(),
        },
    );
  }
}
