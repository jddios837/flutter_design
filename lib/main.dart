import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:design_flutter/src/pages/scroll_page.dart';
import 'package:design_flutter/src/pages/basic_page.dart';
import 'package:design_flutter/src/pages/button_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Change Color bar 
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseño',
      initialRoute: 'button',
      routes: {
        'basico': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'button': (BuildContext context) => ButtonPage(),
      },
    );
  }
}