import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/home_details_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/main_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


import 'pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  

  setPathUrlStrategy();

  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(


      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routeInformationParser: VxInformationParser(),

      routerDelegate: VxNavigator(routes: {
        "/": (_, __) => MaterialPage(child: MainPage()),

        MyRoutes.homeRoute: (_, __) => MaterialPage(child: HomePage()),
        MyRoutes.homeDetailsRoute: (uri, params) {
          final catalog = (VxState.store as MyStore)
              .catalog
              .getById(int.parse(uri.queryParameters["id"]));

          return MaterialPage(
              child: HomeDetailPage(
            catalog: params,
          ));
        },
        MyRoutes.loginRoute: (_, __) => MaterialPage(child: LoginPage()),
        MyRoutes.cartRoute: (_, __) => MaterialPage(child: CartPage()),
      }),
      
    );
  }
}
