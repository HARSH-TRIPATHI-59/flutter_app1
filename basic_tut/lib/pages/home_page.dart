import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   final int days = 70;
    final String name = "Harsh";
  const HomePage({super.key});
// we can do arithematic operation in final but not in const 
   //method is a function which does a work which either return or does not return 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Catalog App"),
      ),
        
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of flutter by $name"),
          ),
        ),
        drawer: Drawer(),
      );
  }
// @required is used to make something mandatory 
// to use a bool you must declared whether it is true or not
  bringVegetables(/*here comes a value to pass*/){ //this is a method  we can use optional parameter using curly bracket

  }
}