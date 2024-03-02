import "dart:ui";

import "package:flutter/material.dart" show Alignment, AssetImage, BorderRadius, BorderSide, BuildContext, ButtonStyle, Color, Colors, Column, Container, CrossAxisAlignment, EdgeInsets, Expanded, Image, InkWell, InputDecoration, MainAxisAlignment, MaterialPageRoute, MaterialStateProperty, MediaQuery, Navigator, OutlineInputBorder, Radius, RoundedRectangleBorder, Row, SafeArea, Scaffold, ShapeDecoration, SingleChildScrollView, SizedBox, Spacer, StatelessWidget, Text, TextButton, TextFormField, TextStyle, Widget;
import "../utils/global.dart";
import "../utils/routes.dart";

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviseWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: darkBackgroundColor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex:5),
              const Image(
                image: AssetImage("assets/images/logo.png"),
                height: 60,
              ),
              const SizedBox(height: 50),
            SizedBox(
              height:42,
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(fontSize: 15,color:Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal:14),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFF888888),
                    ),),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFF848484),
                    )
                  ),
                  hintText:"Phone number, email or username",
                  hintStyle: const TextStyle(fontSize: 15,color:secondaryColor)
                ),
              ),
            ),
            const SizedBox(height:20),
            SizedBox(
              height:42,
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(fontSize: 15,color:Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal:14),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFF848484),
                    ),),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xFF848484),
                    )
                  ),
                  hintText:"Password",
                  hintStyle: const TextStyle(fontSize: 14,color:secondaryColor)
                  
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height:30),
            const Row(
              children: [
                Expanded(
                  flex: 5,
                  child: SizedBox()),
                  Text("Forgot Password?",style:TextStyle(color:primaryColor,fontWeight: FontWeight.bold,fontSize: 14,))
              ],
            ),
            const SizedBox(height:30),
            InkWell(
              onTap: ()=>{
                Navigator.of(context).pushNamed(MyRoutes.HomePageRoute),
              },
              child: Container(
                alignment: Alignment.center,
                height:42,
                width:double.infinity,
                decoration:const ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    color:primaryColor,
                ),
                child:const Text("Log In",style:TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),)
              ),
            ),
              SizedBox(height: deviseWidth * .040,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: deviseWidth * .40,
                    color: Color(0xffA2A2A2),
                  ),
                  SizedBox(width: 10,),
                  Text('OR',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: deviseWidth * .040,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 1,
                    width: deviseWidth * .40,
                    color: Color(0xffA2A2A2),
                  ),
                ],
              ),
              SizedBox(height: deviseWidth * .06,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/fb_logo.png',
                    height: deviseWidth * .060,
                  ),
                  SizedBox(width: 5,),
                  Text('Login with facebook',
                    style: TextStyle(
                      color: Color(0xff1877f2),
                      fontSize: deviseWidth * .040,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            const Spacer(flex:5), 
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? " ,style:TextStyle(color:secondaryColor)),
                TextButton(
                    style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: const Text('Sign Up'),)
              ],
            ),
            const Spacer(flex:2)

            ]),
      ),
    ),),);
  }
}

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {

    double deviseWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: darkBackgroundColor,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(flex:3),
                  const Image(
                    image: AssetImage("assets/images/logo.png"),
                    height: 60,
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    height:42,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: const TextStyle(fontSize: 15,color:Colors.white),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal:14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF888888),
                            ),),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFF848484),
                              )
                          ),
                          hintText:"Name",
                          hintStyle: const TextStyle(fontSize: 15,color:secondaryColor)
                      ),
                    ),
                  ),
                  const SizedBox(height:20),
                  SizedBox(
                    height:42,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: const TextStyle(fontSize: 15,color:Colors.white),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal:14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF848484),
                            ),),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFF848484),
                              )
                          ),
                          hintText:"Username",
                          hintStyle: const TextStyle(fontSize: 14,color:secondaryColor)

                      ),
                    ),
                  ),
                  const SizedBox(height:20),
                  SizedBox(
                    height:42,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: const TextStyle(fontSize: 15,color:Colors.white),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal:14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF848484),
                            ),),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFF848484),
                              )
                          ),
                          hintText:"Password",
                          hintStyle: const TextStyle(fontSize: 14,color:secondaryColor)

                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height:20),
                  SizedBox(
                    height:42,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: const TextStyle(fontSize: 15,color:Colors.white),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal:14),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Color(0xFF848484),
                            ),),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFF848484),
                              )
                          ),
                          hintText:"Confirm Password",
                          hintStyle: const TextStyle(fontSize: 14,color:secondaryColor)

                      ),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(height:30),
                  const Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: SizedBox()),
                      Text("Forgot Password?",style:TextStyle(color:primaryColor,fontWeight: FontWeight.bold,fontSize: 14,))
                    ],
                  ),
                  const SizedBox(height:30),
                  InkWell(
                    onTap: ()=>{
                      Navigator.of(context).pushNamed(MyRoutes.HomePageRoute),
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height:42,
                        width:double.infinity,
                        decoration:const ShapeDecoration(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          color:primaryColor,
                        ),
                        child:const Text("Sign Up",style:TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),)
                    ),
                  ),
                  SizedBox(height: deviseWidth * .040,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: deviseWidth * .40,
                        color: Color(0xffA2A2A2),
                      ),
                      SizedBox(width: 10,),
                      Text('OR',
                        style: TextStyle(

                          color: Color(0xffffffff),
                          fontSize: deviseWidth * .040,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 1,
                        width: deviseWidth * .40,
                        color: Color(0xffA2A2A2),
                      ),
                    ],
                  ),
                  SizedBox(height: deviseWidth * .06,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/fb_logo.png',
                        height: deviseWidth * .060,
                      ),
                      SizedBox(width: 5,),
                      Text('Login with facebook',
                        style: TextStyle(
                          color: Color(0xff1877f2),
                          fontSize: deviseWidth * .040,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(flex:2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account? " ,style:TextStyle(color:secondaryColor)),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Loginpage()),
                            );

                        },
                        child: const Text('Login'),)
                    ],
                  ),


                  const Spacer(flex:2)


                ]),
          ),
        ),),);
  }
}