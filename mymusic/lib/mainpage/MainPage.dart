import 'package:flutter/material.dart';
import 'package:mymusic/mainpage/components/Body.dart';


class MainPage extends StatefulWidget {
  static String routeName = '/routeMainPage';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
