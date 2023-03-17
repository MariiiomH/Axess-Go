import 'package:axess_go/components/BankDetailsCard.dart';
import 'package:axess_go/components/button.dart';
import 'package:axess_go/components/input_field.dart';
import 'package:axess_go/routes/PaymentChoice.dart';
import 'package:axess_go/routes/ResetPassCode.dart';
import 'package:axess_go/routes/TopUp.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login.dart';

class BankDetails extends StatefulWidget {
  @override
  _BankDetails createState() => _BankDetails();
}


class _BankDetails extends State<BankDetails> with SingleTickerProviderStateMixin {

  //final scaffoldKey = GlobalKey<ScaffoldState>();
  //GlobalKey<FormState> _key = new GlobalKey();
  TextEditingController amountController = new TextEditingController();
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


  void copy() {
 
  Clipboard.setData(new ClipboardData(text: '''
  Bank Name : HSBC 
  Account Number : 1234 5678 9000
  Beneficiary : Beneficiary name
  IBAN Number : EG09002
  ''' )).then((_){
   ScaffoldMessenger.of(context)
   .showSnackBar(SnackBar(content: Text('Copied to your clipboard !')));
});
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
            clipBehavior: Clip.none,
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              
             
               SizedBox(height: 20),
               
                 buildText(
                    text: '',
                    padding: EdgeInsets.only(
                        top: height * 0.0001),
                    fontSize: width * 0.04,
                  ),

                Row(
                  children: [
                  Container(
                                  
                                alignment: Alignment.topLeft,
                                child : IconButton(onPressed:() => navigate(()=> TopUp()) , icon: Icon(Icons.arrow_back), color:Colors.white , alignment: Alignment.topLeft ,),

                                ),

                                SizedBox(width: width*0.59,),
                                
                                Container(
                                  
                                alignment: Alignment.topRight,
                                child : flatBtn(),
                                ),

                  ],
                ),
              
               buildText(
                    text: 'Bank Details',
                    padding: EdgeInsets.only(
                        top: height * 0.02 ,),
                       // left: width* 0.30,),
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),

                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                        top: height * 0.01),
                    fontSize: width * 0.04,
                  ),

                  BankDetailsCard().bankCard(context, 'assets/images/copy.png',()=> copy() , "" , 0.17),

                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                    ),
                    fontSize: width * 0.04,
                  ),

                  buildText(
                    text: 'Enter Amount',
                    padding: EdgeInsets.only(
                        top: height * 0.001 ,
                        left: width* 0.02,),
                    fontSize: width * 0.06,
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
              
                InputField.buildLine(amountController , focus , 24 , 0.45 , TextAlign.center , TextInputType.number),

                SizedBox(
                  height: height * 0.08,
                ),
                
                Button.build('Done' , Alignment.center , () => navigate(()=> ResetPassCode(mobileController.text)) , 0.95),
               

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
          color: color , 
          fontSize: fontSize,
          fontFamily: fontFamily ?? '',
          fontWeight: fontWeight ,
        ),
      ),
    );
  }

  Widget flatBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => navigate(()=> PaymentChoice()),
        child: Text(
          'Not Now',
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

 
}