// ignore_for_file: prefer_const_constructors
import 'dart:ui';

import 'package:demo/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget
{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name= "";
  bool changeButton= false;

  final _formkey= GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formkey.currentState!.validate()){
      setState(() {
        changeButton=true;

      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }

  }
  @override
  Widget build(BuildContext context)
  {
    return Material
    (
      color: context.canvasColor,
      child:SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children:
            [
              SizedBox(height: 40.0),
              Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
              SizedBox(height: 5.0),
              Text
                ("Welcome To Book Buddy $name", style: TextStyle(
                  fontSize: 25,color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  )
                ),
              SizedBox(height: 5.0),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(decoration: InputDecoration(hintText: "Enter Username",
                      hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Username",
                        labelStyle: TextStyle(color: Colors.purple) ),
                        validator: (value){
                            if(value!.isEmpty){
                                return "Enter Username";
                            }
                            return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {
                          });
                        }
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Password",
                          labelStyle: TextStyle(color: Colors.purple)),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter Password";
                        }
                        if(value.length<8){
                          return "Password length should be at least 8 Characters";
                        }
                        return null;
                      },

                    ),
                    SizedBox(height: 40.0),
                     InkWell(
                       onTap: () => moveToHome(context),
                       child: AnimatedContainer(
                         duration: Duration(seconds: 1),
                         width: changeButton?110: 150,
                         height: 40,
                         alignment: Alignment.center,
                         child:
                             changeButton?Icon(Icons.done, color: Colors.white,):
                         Text("Login",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                         ),
                         decoration: BoxDecoration(
                           color: Colors.deepPurple,
                           borderRadius: BorderRadius.circular(20)
                         ),
                       ),
                     )
                     // ElevatedButton(
                     //   child: Text("Login", style: TextStyle(fontSize: 18), ),
                     //   style: TextButton.styleFrom(minimumSize: Size(100,40)),
                     //   onPressed: (){
                     //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                     //   },
                     // ),
                  ],

                ),
              )
            ],
          ),
        ),
      )
    );
  }
}