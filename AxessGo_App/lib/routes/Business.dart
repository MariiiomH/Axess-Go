import 'package:axess_go/components/input_field.dart';
import 'package:axess_go/components/next_btn.dart';
import 'package:axess_go/routes/EnterPIN.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';
import 'package:axess_go/components/phone_inputField.dart';
import 'login.dart';

class Business extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

TextEditingController emailController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

class _LoginState extends State<Business> with SingleTickerProviderStateMixin {
 
 

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final focusName = FocusNode();
  final focusMob = FocusNode();
 
@override
  void initState()
  {
    super.initState();
    focusName.addListener(() {print("focus:${focusName.hasFocus}");});
    focusMob.addListener(() {print("focus:${focusMob.hasFocus}");});

  }

  void navigatePage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => EnterPIN()));
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
          child : Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
        children: [


            Positioned(
               top: height*0.000001,
               left: width*0.06,
               child: buildImage(
                        padding: EdgeInsets.only(
                            
                            top: height * 0.1 ,
                            left: width* 0.16),
                      ),
            ),

            Positioned(
              top: height*0.27,
              left: width*0.15,
              child: buildText(
                    text: 'Create your business',
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        left: width* 0.03,),
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
              ),
               Positioned(
              top: height*0.32,
              left: width*0.15,
              child: buildText(
                    text: 'profile to get started',
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        left: width* 0.03,),
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
              ),
           Positioned(
              top: height*0.38,
              left: width*0.01,
              child : buildText(
                    text: 'Business Name',
                    padding: EdgeInsets.only(
                        top: height * 0.05 ,
                        left: width* 0.02,),
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
               ),

             Positioned(
              top: height*0.44,
              left: width*0.01,
              child : InputField.buildBusinessName(busNameController , focusName),
               ),

            Positioned(
              top: height*0.55,
              left: width*0.01,
              child : buildText(
                    text: 'Business phone number',
                    padding: EdgeInsets.only(
                        top: height * 0.05 ,
                        left: width* 0.02,),
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
               ),

              Positioned(
                top: height*0.63,
                left: width*0.01,
                width: width*0.9,
                child:
                    SingleChildScrollView(
                        child: IntlPhoneField(
                               focusNode: focusMob,
                               ),
                           ) 
                        ),


                      Positioned(
                          top: height*0.77,
                          left: width*0.65,
                          child : NextBtn.build(() => navigatePage(), 'Next'),
                      ),

                      ]),

      )  );
  }

  @override
void dispose()
{
  focusMob.dispose();
  focusName.dispose();
  super.dispose();
}

 Padding buildImage(
      { EdgeInsets padding}) {
    return Padding(
      padding: padding,
      child: Image.asset("assets/images/logo.png" , width: 200 , height: 100),
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


















