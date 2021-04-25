import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mymusic/Style/ConstColors.dart';


class SvgButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Function onTap;
  final Widget svgPicture;
  SvgButton(String assetName,BuildContext context, {
    Key key,
    @required this.onTap,
    this.color,
    this.width,
    this.height,
  }):svgPicture = SvgPicture.asset(
    assetName,
    color: color==null ? secondaryColor : color,
    width: width==null ? MediaQuery.of(context).size.width/8.8 : width,
    height: height==null ? MediaQuery.of(context).size.width/8.8 : height,
  ),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: svgPicture,
      onTap: onTap,
    );
  }
}
