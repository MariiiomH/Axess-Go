import 'package:axess_go/components/button.dart';
import 'package:axess_go/routes/BankDetails.dart';
import 'package:axess_go/routes/Individ_Business.dart';
import 'package:axess_go/routes/PaymentChoice.dart';
import 'package:axess_go/routes/login.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';


class TopUp extends StatefulWidget {
  @override
  _TopUp createState() => _TopUp();
}

TextEditingController emailController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

class _TopUp extends State<TopUp> with SingleTickerProviderStateMixin {


 // final scaffoldKey = GlobalKey<ScaffoldState>();
  
 // final GlobalKey<NavigatorState> Navigatorkey = new GlobalKey<NavigatorState>();
 

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
              

               SizedBox(height: height* 0.06 ),


                Container(
                  
                 child : IconButton(onPressed:() => navigate(()=> PaymentChoice()) , icon: Icon(Icons.arrow_back), color:Colors.white , alignment: Alignment.topLeft ,),

                ),

                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                        top: height * 0.001),
                    fontSize: width * 0.04,
                  ),
                

                Button.build('Request Money' , Alignment.center , () => navigate(()=>IndividBusiness()),0.95),
               
                SizedBox(
                  height: 7,
                ),

                Button.build('ATM Deposit' , Alignment.center , () => navigate(()=>BankDetails()),0.95),

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
}           