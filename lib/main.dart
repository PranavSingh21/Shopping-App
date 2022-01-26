import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    // double pi = 3.14;
    // bool isMale = true;
    // num temp = 30.5;

    // var day = "tuesday"; //auto detection of type

    // const pi = 3.14; // constant value
    

    return const MaterialApp(
      home: HomePage(),
    );
  }
}
