import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app3/resources/images.dart';

import '../../resources/images.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Stack(
      children: [
        Image.asset(
          Images.start_1,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Center(
          child: Column(
            children: [
              Expanded(
                flex:2,
                child: Image.asset(
                  Images.start_2,
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.asset(
                  Images.start_3,
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  Images.start_4,
                ),
              ),
              Expanded(
                flex: 3,
                child: Image.asset(
                  Images.start_5,
                ),
              ),
              Expanded(
                flex: 3,
                child: Image.asset(
                  Images.start_6,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
