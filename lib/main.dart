import 'package:cataloug_app/screens/login_page.dart';
import 'package:flutter/material.dart';
//material library ke wajah se hi default theame blue karta h center me app ka name and drawer vagarah
import 'package:cataloug_app/screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  //build me UI ka kaam hoga
  Widget build(BuildContext context) {
    return  MaterialApp(
      //home: HomePage(),
      //theme mode dark or light
      themeMode: ThemeMode.light,
      //to change the colours of the theme
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
       // primaryTextTheme: GoogleFonts.latoTextTheme(),
       //fontFamily: GoogleFonts.lato().fontFamily,
       //style: GoogleFonts.lato(fontSize: 40),
       //style: GoogleFonts.getFont('Lato'),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //initialRoute: "/home",//after reload home will open
      //routes: rasta jaise ki konsa page kholna h aapko, ye map leta h input
      routes: {
        "/" : (context) => LoginPage(),//for home routes by default
        "/home":(context) => HomePage(),
        "/login":(context) =>  LoginPage(),//for 2nd routes to login
      },
    );
  }
}