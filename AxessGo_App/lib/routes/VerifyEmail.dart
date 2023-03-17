import 'package:axess_go/components/button.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class VerifyEmail extends StatefulWidget {


  @override
  _LoginState createState() => _LoginState();
  
}

TextEditingController emailController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();


class _LoginState extends State<VerifyEmail> with SingleTickerProviderStateMixin {

  //final scaffoldKey = GlobalKey<ScaffoldState>();
  //GlobalKey<FormState> _key = new GlobalKey();

  final focus = FocusNode();


  @override
  void initState()
  {
    super.initState();
    focus.addListener(() {print("focus:${focus.hasFocus}");});

  }


  void navigatePage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
        //mobileController.clear();
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
                            path: "assets/images/logo.png",
                      ),
            ),
              Positioned(
                          top: height*0.20,
                          left: width*0.06,
                          child: buildImage(
                                    padding: EdgeInsets.only(
                                        
                                        top: height * 0.10 ,
                                        left: width* 0.16),
                                        path: "assets/images/email.png",
                                  ),
                        ),

            Positioned(
              top: height*0.45,
               left: width*0.035,
              child: buildText(
                    text: 'Verify your email address',
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        left: width* 0.03,),
                    fontSize: width * 0.070,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
              ),
              
            Positioned(
              top: height*0.50,
              //left: width*0.01,
              child : buildText(
                    text: 'In order to start using your Axess Account',
                    padding: EdgeInsets.only(
                        top: height * 0.05 ,
                        left: width* 0.02,),
                    fontSize: width * 0.045,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: const Color(0xFFcbedea),

                  ),
               ),

              Positioned(
                top: height*0.55,
                left: width*0.11,
                width: width*0.9,
                child: buildText(
                    text: 'you need confirm your email address',
                    padding: EdgeInsets.only(
                        top: height * 0.05 ,
                        left: width* 0.02,),
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: const Color(0xFFcbedea),

                  ),
                        ),


                      Positioned(
                          top: height*0.77,
                          //left: width*0.65,
                          child :Button.build('Verify Email' , Alignment.center , () => navigatePage(),0.95),
                      ),

                      ]),

      )  );
  }

  @override
void dispose()
{
  focus.dispose();
  super.dispose();
}

 Padding buildImage(
      { EdgeInsets padding , String path}) {
    return Padding(
      padding: padding,
      child: Image.asset(path , width: 200 , height: 100),
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
//}

  


Widget flatBtn(String txt , Function func , double width) {
    return Row(
      
      children: <Widget>[
      //   Container(
            
          //  width: width*0.01,
            
         //   alignment: Alignment.bottomLeft,
         //   height: 20,
       //     color: Colors.red,
          //  alignment: Alignment.centerLeft,

          IconButton(onPressed:() => navigatePage() , icon: Icon(Icons.arrow_right), color: Color(0xFF87797d) , alignment: Alignment.topLeft,iconSize: width* 0.10 ,padding:EdgeInsets.zero , constraints: BoxConstraints(),),

           
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
}
  











