import 'package:cataloug_app/models/catalog.dart';
import 'package:cataloug_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';

import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final int date = 29;

    final String name = "Vishal";

    @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async{
    // ignore: non_constant_identifier_names
    var CatalogJson = await rootBundle.loadString("assets/files/catalog.json");
    //print(CatalogJson);
    final decodedData = jsonDecode(CatalogJson);
    var productsData = decodedData("products");
    CatalogModel.items=List.from(productsData)
    .map<Item>((item) => item
    .fromMap(item)).toList();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    //final dummyList=List.generate(20,(index)=>CatalogModel.items[0]);
    //return Material(  i.e. we changed the material app to scaffold for seeing the better veiw of app i.e. battery network on the upper head
      return Scaffold(
        //This is a widget of the flutter and shows the name of App on the top
        appBar:AppBar(
          
          title: const Text("Catalog App"),
        ),
        //child:Center(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          //itemCount: dummyList.length,
          itemBuilder: (context,index)
          {return ItemWidget(item:
           CatalogModel.items[index],);
          }
          ),
      ),
    //   :Center(
    //     //$ sign is used for variable we used in build
    //   child:Text("Welcome Dude $date is $name"),
    // ),
    //drawer is a slide menu box on left side (by default) jo ek drawer bna dega
    drawer:MyDrawer(),
      );
  }
}