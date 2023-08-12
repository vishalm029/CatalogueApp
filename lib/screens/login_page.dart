import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white,
      child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
          fit: BoxFit.cover,
          ),
          //for space b/w the text
          SizedBox(
            height: 20.0,
            ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
            ),
            //For generating the login username text box
           Padding(//wraping the new column with padding
             padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
             child: Column(
              children: [
                 TextFormField(
                decoration: InputDecoration(
                  //for prefilled text in username
                  hintText:"Enter Username",
                  
                  labelText: "Username",



                ), 
                ),
                SizedBox(
            height: 20.0,
            ),
            TextFormField(
            obscureText: true,//password form me
            decoration: InputDecoration(
                  //for prefilled text in username
            hintText:"Enter Passward",
            labelText: "Passward",

                ) ,
                ),
            SizedBox(
            height: 20.0,
            ),
            //Login Button
            ElevatedButton(onPressed: (){
              print("You are Logged in Successfully");
            }, 
            child: Text("Login"),
            style: TextButton.styleFrom(

              
            ),)
              ],
             ),
           )
      ],
      )
      )
      // child: Center(
      //   child: Text("Login Page",
      //   style: TextStyle(
      //     fontSize: 20,
      //     color: Colors.blue,
      //     fontWeight: FontWeight.bold,
      //   ),
      //   ),
      //   )
    );
  }
}