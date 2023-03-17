import 'package:axess_go/components/input_field.dart';
import 'package:axess_go/components/next_btn.dart';
import 'package:axess_go/routes/PaymentChoice.dart';
import 'package:axess_go/routes/ScanCrad.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';


class LinkCard extends StatefulWidget {
  @override
  _LinkCard createState() => _LinkCard();
}

TextEditingController cardNumController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController dateController = new TextEditingController();
TextEditingController cvvController = new TextEditingController();

class _LinkCard extends State<LinkCard> with SingleTickerProviderStateMixin {
 
 

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final focusName = FocusNode();
  final focusDate = FocusNode();
  final focusNum = FocusNode();
  final focusCVV = FocusNode();
 
@override
  void initState()
  {
    super.initState();
    focusName.addListener(() {print("focus:${focusName.hasFocus}");});
    focusNum.addListener(() {print("focus:${focusNum.hasFocus}");});
    focusDate.addListener(() {print("focus:${focusDate.hasFocus}");});
    focusCVV.addListener(() {print("focus:${focusCVV.hasFocus}");});

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
    return Scaffold(

       backgroundColor: const Color(0xFF22252e),           
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child : Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
        children: [


            Positioned(
               top: height*0.05,
               left: width*0.001,
               child: Container(
                  
                 child : IconButton(onPressed:() => navigate(()=> PaymentChoice()) , icon: Icon(Icons.arrow_back), color:Colors.white , alignment: Alignment.topLeft ,),

                ),
            ),

            Positioned(
              top: height*0.10,
              child: buildText(
                    text: 'Link a new Card',
                    padding: EdgeInsets.only(
                        top: height * 0.01,),
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
              ),
               Positioned(
              top: height*0.25,
              left: width*0.01,
              child: Row(
                children:[
              
              buildText(
                    text: 'Card Number',
                    padding: EdgeInsets.only(
                        top: height * 0.01),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),

                 // SizedBox(width: width*0.02),

                   buildText(
                    text: 'Expiry Date',
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        left: width* 0.13,),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
                   buildText(
                    text: 'CVV',
                    padding: EdgeInsets.only(
                        top: height * 0.01,
                        left: width* 0.09,),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
                ]),
            ),
            Positioned(
              top: height*0.30,
              left: width*0.01,

              child: Row(
                children:[
              
              InputField.buildCreditNumber(cardNumController, focusNum , 20 , 0.35 , TextAlign.start,TextInputType.number),
            
              SizedBox(width: width* 0.07,),

              InputField.buildLine(dateController, focusDate, 20 , 0.25 , TextAlign.start,TextInputType.number),

              SizedBox(width: width* 0.07,),

              InputField.buildLine(cvvController , focusCVV , 20 , 0.20 , TextAlign.start,TextInputType.number),


                ]),
            ),
           Positioned(
              top: height*0.38,
              left: width*0.01,
              child : buildText(
                    text: 'Name on card',
                    padding: EdgeInsets.only(
                        top: height * 0.05),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
               ),

             Positioned(
              top: height*0.47,
              left: width*0.01,
              child : InputField.buildLine(nameController , focusName , 20 , 0.90 , TextAlign.start,TextInputType.name),

               ),
            
             Positioned(
                top: height*0.56,
                left: width*0.65,
                child : NextBtn.build(() => navigate(()=>ScanCard()), 'Submit'),
             ),

            Positioned(
              top: height*0.70,
              child : Column(
               mainAxisAlignment: MainAxisAlignment.start,
              children :[

               buildText(
                    text: 'To make sure this is the right card.',
                    padding: EdgeInsets.only(
                        top: height * 0.05 ,
                         left: width* 0.01,),
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
                   buildText(
                    text: 'We\'ll charge a small amount. Once Confirmed.',
                    padding: EdgeInsets.only(
                        left: width* 0.01,),
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,
                  ),
                   buildText(
                    text: 'this will automatically be refunded',
                    padding: EdgeInsets.only(
                        left: width* 0.01,),
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,
                  ),
               ])
               ),


                      ]),

      )  );
  }

  @override
void dispose()
{

  focusName.dispose();
  focusNum.dispose();
  focusDate.dispose();
  focusCVV.dispose();
  
  super.dispose();
}

 Padding buildImage(
      { EdgeInsets padding}) {
    return Padding(
      padding: padding,
      child: Image.asset("assets/images/logo.jpeg" , width: 300 , height: 200),
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