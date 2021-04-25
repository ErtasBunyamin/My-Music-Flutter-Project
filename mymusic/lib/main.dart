import 'package:flutter/material.dart';
import 'file:///C:/Users/bunya/Desktop/Projects/GitProject/My-Music-Flutter-Project/mymusic/lib/mainpage/MainPage.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(accentColor: Colors.grey),
        initialRoute: MainPage.routeName,
        routes: {
          MainPage.routeName: (context) => MainPage(),
        });
  }
}