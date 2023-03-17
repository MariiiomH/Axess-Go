import 'package:axess_go/components/pinBox.dart';
import 'package:axess_go/routes/NewPasscode.dart';
import 'package:axess_go/routes/login.dart';
import 'package:flutter/material.dart';
import 'package:axess_go/utils/viewport_size.dart';


class ResetPassCode extends StatefulWidget {

  final String mobile ;
  
  const ResetPassCode (this.mobile, {String text});


  @override
  _ResetPassCode createState() => _ResetPassCode();
}

class _ResetPassCode extends State<ResetPassCode> {

String txt = '';
String astric ='';


List<TextEditingController> controllers = <TextEditingController>[new TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController()];

  void navigatePage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => NewPasscode()));
        mobileController.clear();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Scaffold(
      backgroundColor: const Color(0xFF22252e),
      body: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: <Widget>[

     Positioned(
        top: height*0.05,
        right : width * 0.87,
        child: IconButton(onPressed:() => navigatePage() , icon: Icon(Icons.arrow_back), color:Colors.white , alignment: Alignment.topLeft ,),

      ),


     Positioned(
        top: height*0.13,
        child: buildText(
                    text: "Enter the 6-digit coded",
                    padding: EdgeInsets.only(
                        top: height * 0.01 ,),
                    fontSize: width * 0.07,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
      ),
      Positioned(
        top: height*0.20,
        child: buildText(
                    text: "Enter the code sent to "+widget.mobile.toString(),
                    padding: EdgeInsets.only(
                        top: height * 0.01 ,),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
      ),
      
            
      Positioned(
        top: height *0.35,
        child : Row(
              children: <Widget>[
                
         new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pinBoxs(60.0, controllers , Colors.white, Colors.black, context, false),
        ),
      ),
            ],
        ),
      ),

    
     Positioned(
        top: height*0.55,
        child: resendBtn(),
      ),
    ]));
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

Widget pins(List<TextEditingController> cons, BuildContext context)
{ return GestureDetector(
    child :  new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pinBoxs(60.0, cons , Colors.white, Colors.black, context, false),
        ),
      ),
   );
}

  Widget resendBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => navigatePage(),
        child: Text(
          'Resend Code',
            style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


