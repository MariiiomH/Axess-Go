import 'package:axess_go/components/numericABC_keyboard.dart';
import 'package:axess_go/routes/PaymentChoice.dart';
import 'package:flutter/material.dart';
import 'package:axess_go/utils/viewport_size.dart';


class NewPasscode extends StatefulWidget {

  @override
  _NewPasscode createState() => _NewPasscode();
}

class _NewPasscode extends State<NewPasscode> {

String txt = '';
String astric ='';
int iconsCount = 4;

void navigate(Function page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => page()));
    }



  Widget otpNumberWidget(int position) {
    try {
      return Container(
        
        height: 70,
        width: 70,
        decoration: BoxDecoration(
           // color: Colors.redAccent,
            border: Border.all(color: Colors.cyan, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(35))
        ), 
        child: Center(child: new Padding(padding: EdgeInsets.only(top: 7) ,
          child: Align(alignment: FractionalOffset.center,
          child : Text(astric[position] , 
          style: TextStyle(color: Colors.black , fontSize: 25),))),
      ));
    } catch (e) {
      return Container(

        height: 70,
        width: 70,
        decoration: BoxDecoration(
      
            border: Border.all(color: const Color(0xFF555a6b), width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(35))
        ),
      );
    }
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
        top: height*0.15,
        child: buildText(
                    text: 'Create New Passcode',
                    padding: EdgeInsets.only(
                        top: height * 0.01 ,),
                    fontSize: width * 0.08,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
      ),
      
            
      Positioned(
        top: height *0.35,
        child : Row(
              children: <Widget>[
              Padding(padding: const EdgeInsets.all(5), child:  otpNumberWidget(0), ),
              Padding(padding: const EdgeInsets.all(5), child:  otpNumberWidget(1), ),
              Padding(padding: const EdgeInsets.all(5), child:  otpNumberWidget(2), ),
              Padding(padding: const EdgeInsets.all(5), child:  otpNumberWidget(3), ),

            ],
        ),
      ),
      
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          /*
          Text(txt ,
           style: TextStyle(color: Colors.blue),
          ),
          */
          
          NumericABCKeyboard(
            onKeyboardTap: _onKeyboardTap,
            textColor: Colors.white,
            rightButtonFn: () {
              setState(() {
                if (txt.length == 0)
                {
                  return;
                }
                else if (txt.length > iconsCount)
                {
                  txt = txt.substring(0, iconsCount);
                  astric = astric.substring(0, iconsCount);
                }
                txt = txt.substring(0, txt.length - 1);
                astric = astric.substring(0, astric.length -1);
              });
            },
            rightIcon: Icon(
              Icons.backspace,
              color: Colors.white,
            ),
            leftButtonFn: () {
              navigate(()=>PaymentChoice());
            },
            leftIcon: Icon(
              Icons.check,
              color: const Color(0xFF22252e),
            ), 
          ),
         
        ],
      ),
     ])
    );
  }

  _onKeyboardTap(String value) {
    setState(() {


            txt = txt + value;
            astric = '\u2022' * txt.length  ;
        
    });
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


