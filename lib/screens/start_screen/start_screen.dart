import 'package:flutter/material.dart';
import 'package:flutter_app3/resources/images.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(Images.start_screen, fit: BoxFit.fill,),
    );
  }
}
