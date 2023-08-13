import 'package:cataloug_app/models/catalog.dart';
import 'package:cataloug_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/item_widget.dart';
class HomePage extends StatelessWidget {
   final int date = 29;
    final String name = "Vishal";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(20,(index)=>CatalogModel.items[0]);
    //return Material(  i.e. we changed the material app to scaffold for seeing the better veiw of app i.e. battery network on the upper head
      return Scaffold(
        //This is a widget of the flutter and shows the name of App on the top
        appBar:AppBar(
          
          title: Text("Catalog App"),
        ),
        //child:Center(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          //itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context,index)
          {return ItemWidget(item:
           dummyList[index],);
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