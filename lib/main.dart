import 'package:app_learning/pages/login_page.dart';
import 'package:app_learning/util/routes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,

      // Below theme is for light shade
      theme: ThemeData(
        
        primarySwatch: Colors.purple,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark,
      primarySwatch: Colors.deepOrange,
      ),
      initialRoute: "/home",
      routes: {
        MyRoutes.loginRoute : (context) =>LoginPage(),
        MyRoutes.homeRoute : (context) =>HomePage(),
        //"/home" : (context) =>LoginPage()
      },

    );
  }
}
