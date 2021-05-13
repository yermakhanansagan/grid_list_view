import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app3/screens/characters_list/characters_page.dart';
import 'package:flutter_app3/screens/start_screen/start_screen.dart';
import 'package:flutter_app3/theme/color_theme.dart';

import 'screens/start_screen/start_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: ColorPalette.dark_mode_main_color),
    );
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: ColorPalette.dark_mode_main_color, fontFamily: "Roboto"),
      home: SafeArea(
        child: Scaffold(
          body: StartScreen(),
        ),
      ),
    );
  }
}
