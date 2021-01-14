import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform;

import 'package:designs/src/pages/basic_page.dart';
import 'package:designs/src/pages/scroll_page.dart';
import 'package:designs/src/pages/buttons_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Textos blancos en barra de estado
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
          .copyWith(statusBarColor: Colors.transparent));
    } else if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'buttons',
      routes: {
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'buttons': (BuildContext context) => ButtonsPage(),
      },
    );
  }
}
