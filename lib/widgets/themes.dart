import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) =>ThemeData(
        primarySwatch: Colors.deepPurple,
       // primaryTextTheme: GoogleFonts.latoTextTheme(),
       //fontFamily: GoogleFonts.lato().fontFamily,
       //style: GoogleFonts.lato(fontSize: 40),
       //style: GoogleFonts.getFont('Lato'),
      appBarTheme: AppBarTheme(
      color: Color.fromARGB(255, 226, 121, 207),
       elevation: 0.0,
       iconTheme: IconThemeData(color: Colors.black),
   
       textTheme: Theme.of(context).textTheme,),

      );


       static ThemeData darkTheme(BuildContext context) =>ThemeData(
        brightness: Brightness.dark,

      );
}