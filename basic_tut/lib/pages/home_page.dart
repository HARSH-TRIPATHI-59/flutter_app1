import 'package:basic_tut/models/catalog.dart';
import 'package:basic_tut/widgets/drawer.dart';
import 'package:basic_tut/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 70;

  final String name = "Harsh";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    print(productsData);
  }

// we can do arithematic operation in final but not in const
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(
        4, (index) => CatalogModel.items[0]); //to generate on their own
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
  bringVegetables(/*here comes a value to pass*/) {
    //this is a method  we can use optional parameter using curly bracket
  }
}
