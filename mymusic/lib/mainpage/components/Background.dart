import 'package:flutter/material.dart';
import 'package:mymusic/Style/BackgroundStyles.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
      Key key,
    @required this.child}): super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Container(
          width: size.width,
          height: size.height,
          decoration: BackgroundStyles.backgroundBox(),
        ),
        Positioned(
          height: size.width*0.13,
          width: size.width*0.13,
          bottom: size.height*0.04,
          child: Center(child: Image.asset("assets/LogoRound.png")),
        ),
        child,
      ],
    );
  }
}
