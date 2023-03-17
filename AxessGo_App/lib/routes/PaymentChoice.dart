import 'package:axess_go/components/Cards.dart';
import 'package:axess_go/routes/HomePage.dart';
import 'package:axess_go/routes/LinkCard.dart';
import 'package:axess_go/routes/TopUp.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';


class PaymentChoice extends StatefulWidget {
  const PaymentChoice({Key key}) : super(key: key);

  @override
  _PaymentChoice createState() => _PaymentChoice();
}


class _PaymentChoice extends State<PaymentChoice> {


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
    body : Padding(
           padding: const EdgeInsets.symmetric(vertical: 65.0),
      child : SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [

           Cards().txtBtnCard(context,"Link payment method", 'assets/images/add_Btn.png', ()=> navigate(()=> LinkCard()) ,"Credit and Debit Cards from Visa and Mastercard Meezacard accepted" , 0.28),
                                  
           Cards().txtBtnCard(context,"Reward", 'assets/images/add_Btn.png',()=> navigate(()=> HomePage()) , "" , 0.58),
                                  
           Cards().fullCard(context, "assets/images/topUp.png", "Top up", 'assets/images/add_Btn.png',()=> navigate(()=> TopUp()) ,"Select any of your payment methods"),
           
           Padding(padding: EdgeInsets.only(right: width*0.60 , top: height*0.01), child: Text('Linked Cards' , style:TextStyle(
                                              color: Colors.white ,
                                              fontSize: 21,
                                                fontWeight: FontWeight.bold ,
                                              )),),
          
          Cards().imgCard(context, "assets/images/MasterCard.png", "4576  ********  4576"),

          Cards().txtCard(context, "Salary", "Get paid into Axess , enjoy next level control of your money"),
           


        ],)
      ),
     )));
     
  } 
}




