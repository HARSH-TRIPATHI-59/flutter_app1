import 'package:basic_tut/models/catalog.dart';
import 'package:basic_tut/widgets/drawer.dart';
import 'package:basic_tut/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 70;
  final String name = "Harsh";
  const HomePage({super.key});
// we can do arithematic operation in final but not in const
  //method is a function which does a work which either return or does not return(void)
  @override
  Widget build(BuildContext context) {
  final dummyList = List.generate(4, (index) => CatalogModel.items[0]); //to generate on their own
    //context gives location of the widget
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }

// @required is used to make something mandatory
// to use a bool you must declared whether it is true or not or else it will throw error
  bringVegetables(/*here comes a value to pass*/) {
    //this is a method  we can use optional parameter using curly bracket
  }
}
