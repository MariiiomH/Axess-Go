import 'package:axess_go/components/button.dart';
import 'package:axess_go/routes/Individ_Business.dart';
import 'package:axess_go/routes/ResetPassCode.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';
import 'package:axess_go/components/phone_inputField.dart';
import 'login.dart';

class ForgetScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<ForgetScreen> with SingleTickerProviderStateMixin {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  //GlobalKey<FormState> _key = new GlobalKey();
  final FocusNode focus = FocusNode();

   @override
  void initState()
  {
    super.initState();
    focus.addListener(() {print("focus:${focus.hasFocus}");});

  }

  void navigate(Function page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page()));
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
              
             
               SizedBox(height: 20),
               
                 buildText(
                    text: '',
                    padding: EdgeInsets.only(
                        top: height * 0.0001),
                    fontSize: width * 0.04,
                  ),

                Container(
                  
                 child : IconButton(onPressed:() => navigate(()=> IndividBusiness()) , icon: Icon(Icons.arrow_back), color:Colors.white , alignment: Alignment.topLeft ,),

                ),
               buildText(
                    text: 'Forget Password ?',
                    padding: EdgeInsets.only(
                        top: height * 0.02 ,
                        left: width* 0.25,),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),

                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                        top: height * 0.01),
                    fontSize: width * 0.04,
                  ),
                  buildText(
                    text: 'We just need your registered mobile',
                    padding: EdgeInsets.only(
                        top: height * 0.001 ,
                        left: width* 0.11,),
                    fontSize: width * 0.043,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: const Color(0xFFcbedea),

                  ),
                  buildText(
                    text: 'number to send your reset passcode',
                    padding: EdgeInsets.only(
                        top: height * 0.001 ,
                        left: width* 0.11,),
                    fontSize: width * 0.043,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'VarelaRound',
                    color: const Color(0xFFcbedea),

                  ),
                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                    ),
                    fontSize: width * 0.04,
                  ),

                  buildText(
                    text: 'Mobile number',
                    padding: EdgeInsets.only(
                        top: height * 0.001 ,
                        left: width* 0.02,),
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
                    buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.001,
                    ),
                    fontSize: width * 0.04,
                  ),
                
                
                IntlPhoneField(
                  focusNode: focus,
                  ),

                SizedBox(
                  height: 10,
                ),
                
                Button.build('Submit' , Alignment.center , () => navigate(()=> ResetPassCode(mobileController.text)) , 0.95),
               

              ],
            ),
          ),
        ),
        ),
    );
  }

@override
void dispose()
{
  focus.dispose();
  super.dispose();
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

















