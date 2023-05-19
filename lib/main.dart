import 'package:flutter/material.dart';
import 'package:islami/Home_Screen.dart';
import 'package:islami/My_theme.dart';
import 'package:islami/sura_content.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lighttheme,
      darkTheme: MyThemeData.darktheme,
      themeMode: ThemeMode.light,
      initialRoute:HomeScreen.routeName ,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SuraContent.routeName:(context)=>SuraContent(),

      },
    );

  }
}
