import 'package:cataloug_app/utility/routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
//underscore lagane se public se private me ban jata h koi bhi class 

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
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
            "Welcome $name",
            style: TextStyle(
              fontSize: 28,
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
                onChanged: (value){
                  name=value;
                  setState(() {
                    
                  });
                }, 
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
            height: 40.0,
            ),
//To make any widget as clickable we use to wrap it with "Jester"(no feedback) or "inkwell"(more effective splash colors)
            InkWell(
              onTap: () async{
                setState(() {
                  changeButton=true; 
                });
                //to wait for icon
                await Future.delayed(Duration(seconds: 1));
                //Navigator.pushNamed(context, MyRoutes.homeRoute);
                
              },
              //for animation make container to animation container
              child: AnimatedContainer(
                duration:Duration(seconds: 1),
                width: changeButton ? 60 : 150,
                height: 40,
                //color: Colors.deepPurple,
                alignment: Alignment.center,
                child:changeButton?Icon(Icons.done,color:Colors.white,)
                :Text(
                  "Login",
                  style:TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
                ),
                decoration: BoxDecoration(
                  color:Colors.deepPurple,
                 // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changeButton ? 50:8)
                ),
              ),
            )


            //Login Button
            // ElevatedButton(onPressed: (){
            //   //print("You are Logged in Successfully");
            //   Navigator.pushNamed(context, MyRoutes.homeRoute);//jab login pe click karenge to home pe aa jayenge
            // }, 
            // child: Text("Login"),
            // style: TextButton.styleFrom(
            //   minimumSize: Size(150, 40)

              
            // ),)
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