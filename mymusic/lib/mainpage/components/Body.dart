import 'package:flutter/material.dart';
import 'package:mymusic/MyMaterials/SvgButton.dart';
import 'package:mymusic/Style/MainButtonStyle.dart';
import 'package:mymusic/mainpage/components/Background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgButton("assets/history_icon.svg",context,

                      onTap: (){},
                      width: size.width*0.15,
                      height: size.width*0.15,
                    )
                  ),
                  Expanded(
                    flex: 1,
                    child: SvgButton("assets/play_button.svg",context,
                      width: size.width*0.3,
                      height: size.width*0.3,
                      onTap: (){},
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SvgButton("assets/shuffle_icon.svg",context,
                      onTap: (){},
                      width: size.width*0.15,
                      height: size.width*0.15,
                    )
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainButtonStyle("assets/my_music_icon.svg","My Musics"),
                  SizedBox(height: size.height*0.05,),
                  MainButtonStyle("assets/list_icon.svg","My Play List"),
                ],
              ),
              Spacer()
            ],
          )
      );
  }
}


