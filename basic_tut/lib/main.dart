import 'package:basic_tut/pages/home_page.dart';
import 'package:basic_tut/pages/login_page.dart';
import 'package:basic_tut/utils/routes.dart';
import 'package:basic_tut/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override // Myapp and statelessWidget both are using  build to do their own task thus overriding the same method build
  Widget build(BuildContext context) {
    //Widget is a component
    //context help tell us the position of a different things in flutter

    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light, //first declare theme
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.homeRoute, //to use which route at the start of the app
      routes: {
        "/": (context) =>
            LoginPage(), //does the same work as home: Homepage(), this is object of class HomePage(), can also use new
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.loginRoute: (context) => LoginPage(),
      }, //tells direction
    );
  }
}
