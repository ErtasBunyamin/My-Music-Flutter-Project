import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mymusic/Style/ConstColors.dart';

class MainButtonStyle extends StatelessWidget {
  final Widget svgPicture;
  final Widget textContext;
  MainButtonStyle(String assetName,String text,{
    Key key,
  }) : svgPicture = SvgPicture.asset(assetName,color: primaryColor,),
  textContext = Text(text,style: TextStyle(fontSize: 36,color: secondaryColor)),
  super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*0.10,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25)),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                SizedBox(width: size.width*0.05,),
                svgPicture,
                SizedBox(width: size.width*0.06,),
                textContext,
              ],
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right:8.0),
                child: SvgPicture.asset("assets/arrow_twin_icon.svg",
                  color: primaryColor,
                ),
              ),
          ),
        ],
      ),
    );
  }
}
