

import 'package:axess_go/components/button.dart';
import 'package:axess_go/routes/Business.dart';
import 'package:axess_go/routes/PaymentChoice.dart';
import 'package:axess_go/routes/login.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';


class IndividBusiness extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

TextEditingController emailController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

class _LoginState extends State<IndividBusiness> with SingleTickerProviderStateMixin {


 

  void navigate(Function page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => page()));
        busNameController.clear();
        mobileController.clear();
    }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return MaterialApp(
     home: Scaffold(

        backgroundColor: const Color(0xFF22252e), 
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          
          child: SingleChildScrollView(
     
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              
              buildImage(
                    padding: EdgeInsets.only(
                        top: height * 0.07 ,
                        left: width* 0.25),
                        w: width* 0.40,
                        h : height *0.15,
                  ),
                           
   
               buildText(
                    text: 'Signing up as ',
                    padding: EdgeInsets.only(
                        top: height * 0.05,
                        left: width* 0.01,),
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),

                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                        top: height * 0.001),
                    fontSize: width * 0.04,
                  ),
                

                Button.build('     A business' , Alignment.centerLeft , () => navigate(()=>Business()) ,0.95),
               
                SizedBox(
                  height: 7,
                ),

                Button.build('     An individual' , Alignment.centerLeft , () => navigate(()=>PaymentChoice()), 0.95),

              ],
            ),
          ),
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
          color: color , //const Color(0xFFFFFFFF),
          fontSize: fontSize,
          fontFamily: fontFamily ?? '',
          fontWeight: fontWeight ,
        ),
      ),
    );
  }
             
 Padding buildImage(
      { EdgeInsets padding, AssetImage logo  , double w , double h }) {
    return Padding(
      padding: padding,
      child: Image.asset("assets/images/logo.png" , width: w  , height: h ),
    );
  }
}
















