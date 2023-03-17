import 'package:axess_go/components/button.dart';
import 'package:axess_go/routes/LinkCard.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';



class ScanCard extends StatefulWidget {
  @override
  _ScanCard createState() => _ScanCard();
}

TextEditingController emailController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

class _ScanCard extends State<ScanCard> with SingleTickerProviderStateMixin {


  final scaffoldKey = GlobalKey<ScaffoldState>();
  
 // final GlobalKey<NavigatorState> Navigatorkey = new GlobalKey<NavigatorState>();
 
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
               top: height*0.04,
               left: width*0.01,
              child:Container(
                  
                 child : IconButton(onPressed:() => navigate(()=> LinkCard()) , icon: Icon(Icons.arrow_back), color:Colors.white , alignment: Alignment.topLeft ,),

                ),
            ),
          Positioned(
               top: height*0.15,
              child: buildImage(
                    padding: EdgeInsets.only(
                        
                        top: height * 0.000001 ,
                        left: width* 0.001),
                        path: "assets/images/Scan.png" ,
                        w: 250,
                        h:250,
                        
                  ),
          ),

             
            Positioned(
               top: height*0.50,
              child: buildImage(
              padding: EdgeInsets.only(
                        
                        top: height * 0.000001 ,
                        left: width* 0.02),
                        path: "assets/images/Camera.png" ,
                        w: 80,
                        h: 80,
                  ),
            ),              
             Positioned(
               
              top: height*0.70,
              child: Text(
                  'Direct the camera of your ',
                   style: const TextStyle(fontSize: 20 , color: Colors.white),
                  
                ),
             ),


            Positioned(
               
              top: height*0.73,
              child: Text(
                  'your phone to scan the card',
                   style: const TextStyle(fontSize: 20 , color: Colors.white),

                ),
              ),
               
                
             Positioned(
               top: height*0.85,
               right: width* 0.25,
               width: width * 0.9,
               child: Button.build('Retake' , Alignment.center , () => navigate(()=> LinkCard()), 0.45),
              ),

             Positioned(
               top: height*0.85,
               left: width*0.25,
               width: width * 0.9,
               child:Button.build('Continue' , Alignment.center , () => navigate(()=> LinkCard()),0.45),
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