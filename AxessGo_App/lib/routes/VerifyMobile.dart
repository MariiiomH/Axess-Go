import 'package:axess_go/components/divider.dart';
import 'package:axess_go/components/input_field.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'VerifyEmail.dart';

class VerifyMobile extends StatefulWidget {

  final String mobile ;
  
  const VerifyMobile(this.mobile, {String text});

  @override
  _LoginState createState() => _LoginState();
  
}

TextEditingController emailController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();


class _LoginState extends State<VerifyMobile> with SingleTickerProviderStateMixin {

  final scaffoldKey = GlobalKey<ScaffoldState>();
  //GlobalKey<FormState> _key = new GlobalKey();

  final focus = FocusNode();


  @override
  void initState()
  {
    super.initState();
    focus.addListener(() {print("focus:${focus.hasFocus}");});

  }
 
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
            
            
          //child:  Form(
            
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

               buildText(
                    text: 'Enter Confirmation Code',
                    padding: EdgeInsets.only(
                        top: height * 0.02 ,
                        left: width* 0.18,),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
                 buildText(
                    text: '',
                    padding: EdgeInsets.only(
                        top: height * 0.0001),
                    fontSize: width * 0.04,
                  ),
                Divider(),

                Container(
                 alignment: Alignment.topLeft,
                  child : buildText(
                    text: 'Confirmation Code',
                    padding: EdgeInsets.only(
                          top: height * 0.05 ),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,
                  ),
                 ),
                 
                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.01,
                    ),
                    fontSize: width * 0.04,
                  ),

                InputField.buildLine(emailController , focus , 20 , 0.45 , TextAlign.center,TextInputType.number),

              Container(
                alignment: Alignment.topLeft,
                child: buildText(
                    text: "From the SMS we sent to "+ widget.mobile.toString(),
                    padding: EdgeInsets.only(
                          top: height * 0.10 ),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,
                  ),
                ),      
                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.02,
                    ),
                    fontSize: width * 0.04,
                  ),

                 buildText(
                    text: 'We need confirm your mobile is the ',
                   padding: EdgeInsets.only(
                          top: height * 0.05 ),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: const Color(0xFFcbedea),
                  ),
                
                  buildText(
                    text: 'one you\'re using to secure payments ',
                    padding: EdgeInsets.only(
                        top: height * 0.01 ,),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: const Color(0xFFcbedea),

                  ),
                  buildText(
                    text: 'and prevent fraud.',
                    padding: EdgeInsets.only(
                        top: height * 0.01 ,
                        ),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'VarelaRound',
                    color: const Color(0xFFcbedea),

                  ),

                    buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.001,
                    ),
                    fontSize: width * 0.04,
                  ),

                  SizedBox(
                  height: height*0.05,
                ),
    
              
                flatBtn('Resend Confirmation Code', ()=> print('ok') , width),
                flatBtn('I\'ll do this later', ()=> navigate(()=>VerifyEmail()) ,width),
             
              
              
               

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



Widget flatBtn(String txt , Function func , double width) {
    return Row(
      
      children: <Widget>[
      //   Container(
            
          //  width: width*0.01,
            
         //   alignment: Alignment.bottomLeft,
         //   height: 20,
       //     color: Colors.red,
          //  alignment: Alignment.centerLeft,

          IconButton(onPressed:() => func, icon: Icon(Icons.arrow_right), color: Color(0xFF87797d) , alignment: Alignment.topLeft,iconSize: width* 0.10 ,padding:EdgeInsets.zero , constraints: BoxConstraints(),),

      
      //     ),
     
        Container(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: func,
            child: Text(
                txt,
                style: TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
                fontSize: width*0.04,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget divider() {
    return Row(
      
      children: <Widget>[
         Container(
          //  alignment: Alignment.center,
            width: 375,
            child : DividerLine.buildDivider(),
          ),
          
       // SizedBox(height: 5.0),
        /*
        Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xFF87797d) , width: 2),
               ),
            ),
          ),
          */
      ],
    );
  }



/*
 Widget FlatBtn(String txt , Function func) {
    return Container(
      alignment: Alignment.topLeft,
      child: TextButton(
        onPressed: func,
        child: Text(
            txt,
            style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
  */
 Padding buildText(
      {double fontSize, EdgeInsets padding,  String text, Color color , String fontFamily , FontWeight fontWeight}) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        textAlign: TextAlign.center,
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


















