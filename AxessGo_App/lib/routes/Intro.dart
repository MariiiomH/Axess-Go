import 'package:axess_go/components/button.dart';
import 'package:axess_go/components/gradient_text.dart';
import 'package:axess_go/routes/PaymentChoice.dart';
import 'package:axess_go/routes/login.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';



class Intro extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

TextEditingController emailController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

class _LoginState extends State<Intro> with SingleTickerProviderStateMixin {


  //final scaffoldKey = GlobalKey<ScaffoldState>();
  
  //final GlobalKey<NavigatorState> Navigatorkey = new GlobalKey<NavigatorState>();
 
    void navigate(Function page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page()));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Scaffold(

        backgroundColor: const Color(0xFF22252e), 
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          
            child: Stack(
               alignment: Alignment.center,
               clipBehavior: Clip.none,

                children: <Widget>[


            Positioned(
              top: height*0.05,
              right: width*0.001,
              child: TextButton(
              onPressed: () => navigate(()=>PaymentChoice()),
              child: Text(
                'Skip',
                  style: TextStyle(
                  color: const Color(0Xffd3d4ce),
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
      ),       

            Positioned(
               top: height*0.07,
               left: width*0.21,
              child: buildImage(
              padding: EdgeInsets.only(
                        
                        top: height * 0.000001 ,
                        left: width* 0.02),
                        path: "assets/images/logoTxt.png" ,
                        w: width *0.45,
                        h: height * 0.20,
                  ),
            ),
          Positioned(
               top: height*0.26,
               left: width*0.05,
              child: buildImage(
                    padding: EdgeInsets.only(
                        
                        top: height * 0.000001 ,
                        left: width* 0.001),
                        path: "assets/images/Wallet.png" ,
                        w: 350,
                        h:300,
                        
                  ),
          ),
                           
             Positioned(
               
              top: height*0.70,
              left: width *0.25,
               child: GradientText(
                  'Take control of ',
                  style: const TextStyle(fontSize: 27),
                  gradient: LinearGradient(
                    
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                   
                    const Color(0xFF425e92),
                    const Color(0xFF5C84D1),
                  ]),
                ),
             ),


            Positioned(
               
              top: height*0.74,
              left: width *0.26,
               child: GradientText(
                  'your spending.',
                  style: const TextStyle(fontSize: 27),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    
                    const Color(0xFF268da6),
                    const Color(0xFF33CDF1),
                  ]),
                ),
              ),
               
                
             Positioned(
               top: height*0.80,
               left: width*0.01,
               width: width * 0.9,
               child: Button.build('Create Account' , Alignment.center , () => navigate(()=>Login()), 0.95),
              ),

             Positioned(
               top: height*0.89,
               left: width*0.01,
               width: width * 0.9,
               child:Button.build('Login' , Alignment.center , () => navigate(()=>Login()),0.95),
             ),

              ],
            ),
          ),
    );
  }


              
 Padding buildText(
      {double fontSize, EdgeInsets padding,  String text, Color color , String fontFamily , FontWeight fontWeight}) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          color: color ,
          fontSize: fontSize,
          fontFamily: fontFamily ?? '',
          fontWeight: fontWeight ,
        ),
      ),
    );
  }
             
 Padding buildImage(
      { EdgeInsets padding, String path , double w , double h }) {
    return Padding(
      padding: padding,
      child: Image.asset(path, width: w , height: h),
    );
  }
}
















