import 'package:basic_tut/pages/home_page.dart';
import 'package:basic_tut/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override // Myapp and statelessWidget both are using  build to do their own task thus overiding the same method build
  Widget build(BuildContext context) {
    //Widget is a component
    //context help tell us the position of a different things in flutter

    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,//first declare theme
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,// adjust all types of widget according to given color
      ),
      darkTheme: ThemeData( //then intilize how do you want your theme to be and return to themeMode
        brightness: Brightness.dark,
      ),
      initialRoute: "/home", //to use which route at the start of the app
      routes: {
        "/": (context) =>  LoginPage(), //does the same work as home: Homepage(), this is object of class HomePage(), can also use new 
        "/home": (context) =>  HomePage(),
        "/login": (context) =>  LoginPage(),
      }, //tells direction
    );
  }
}
