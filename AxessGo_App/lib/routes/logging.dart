import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';

class Logging extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

TextEditingController emailController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

class _LoginState extends State<Logging> with SingleTickerProviderStateMixin {
 
 

  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Scaffold(

       backgroundColor: const Color(0xFF22252e),           
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child : Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
        children: [


            Positioned(
               top: height*0.35,
             //  left: width*0.06,
               child: CircularProgressIndicator
               ( backgroundColor: const Color(0xFF3a5169),
                 valueColor: AlwaysStoppedAnimation(const Color(0xFF4e8dc8)) ,
               ),
            ),

            Positioned(
              top: height*0.45,
             // left: width*0.15,
              child: buildText(
                    text: 'Logging in ...',
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        left: width* 0.03,),
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
              ),
          ]),
      )  );
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
}