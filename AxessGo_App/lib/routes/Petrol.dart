import 'package:axess_go/components/CardsDesign.dart';
import 'package:axess_go/components/RepeatCard.dart';
import 'package:axess_go/components/fuelCard.dart';
import 'package:axess_go/routes/Nearby.dart';
import 'package:axess_go/routes/TopUp.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Petrol extends StatefulWidget {
  
  Petrol ({Key key}) : super(key: key);

  @override
  _Petrol createState() => _Petrol();


   bool menuPressed = false;
   bool featuredPressed = true;
   bool promoPressed = false;
}

 
class _Petrol extends State<Petrol> {


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
    backgroundColor: const Color(0xFFE5E5E5), 
    body : Padding(
           padding: const EdgeInsets.only(top: 45.0),
      child : Stack(
     
     clipBehavior: Clip.none,
    
  children: [

     Container(
     // color: Colors.black,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: height *0.09),
      child: Stack(
        clipBehavior: Clip.none,
        children: [

      Positioned(
        left: width *0.01,
        right: width *0.01,
        child: RepeatCard().petrolCard(context, "assets/images/fuel.png", "Chill Out",()=> navigate(()=> TopUp()) ,"500")
        ),
      

        Positioned(
        top: height *0.30,
        left: width * 0.06,
        right: width *0.02,
        child:  CardsDesign().gasNearbyCard(context,"Gas Station Near To You",'400', "assets/images/downArrow.png",()=> navigate(()=> Nearby()) , "" , 0.01),
     

        ),

        Positioned(
        top: height *0.53,
        left: width * 0.01,
        right: width *0.01,
        child:  FuelCard().fuelAmountCard(context, "assets/images/Super.png", "Enter Or Select Amount", 'assets/images/add_Btn.png',()=> navigate(()=> TopUp()) ,"Motcha frappuccino"),

        ),

        ],)
      ),
     
      ],)
      
      
    
     )));
     
  } 

Widget btn ( String text , bool check, bool pressed , bool unenable1 , bool unenable2) {
    return ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFF4F4FE),
            onPrimary: const Color(0xFFF4F4FE),
            fixedSize: Size(ViewportSize.width *0.25,ViewportSize.height * 0.07), 
            elevation: 7,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13),
            ),
   
          ),
          onPressed: () { 
             setState(() {
                 widget.menuPressed = pressed;
                 widget.featuredPressed = unenable1;
                 widget.promoPressed =  unenable2;
            });
          },
          child:Text(
          text,
          softWrap: false,
          style: check ? 
          TextStyle(
            color: const Color (0xFF22252E)  ,
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
          ):
           TextStyle(  //Default
            color:  const Color (0xFFC0bed3) ,
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
          )
          
          )

          );
  
  }



}



