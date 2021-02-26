import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catelog/Utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String txt ="";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png"),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $txt",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Please enter username",
                        labelText: "Username",
                      ),
                      onChanged: (value){
                        txt = value;
                        setState(() {
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Please enter password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });

                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration:Duration(seconds:1),
                        width:changeButton?50 : 150,
                        height: 45,
                        alignment: Alignment.center,
                        child: changeButton?Icon(Icons.done,color: Colors.white,):Text("Login",style:
                        TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(changeButton?50:8)),
                      ),
                    )

                    /*ElevatedButton(
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                      onPressed: () {
                     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    )*/
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
