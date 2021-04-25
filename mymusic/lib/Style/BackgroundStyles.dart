import 'package:flutter/material.dart';

import 'ConstColors.dart';

class BackgroundStyles {
  static BoxDecoration backgroundBox(){

    return BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
        Colors.black,
        primaryColor,
        ],),
    );
  }
}
