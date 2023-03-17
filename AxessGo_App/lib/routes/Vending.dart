import 'dart:ui';

import 'package:axess_go/components/CardsDesign.dart';
import 'package:axess_go/components/CoffeeProductCard.dart';
import 'package:axess_go/components/RepeatCard.dart';
import 'package:axess_go/models/CategCardModel.dart';
import 'package:axess_go/routes/Cart.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Vending extends StatefulWidget {
  
  Vending ({Key key}) : super(key: key);

  @override
  _Vending createState() => _Vending();


   bool menuPressed = false;
   bool featuredPressed = true;
   bool promoPressed = false;

   bool sPressed = false;
   bool mPressed = false;
   bool lPressed = true;

}

 
class _Vending extends State<Vending> {

 var price =[20, 23 , 12 , 15] ;
 var counter = [[20,22,25],[23,25,27],[12,15,17],[15,19,26]];

  void navigate(Function page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page()));
  }

  void calculatePrice(int i , int j  ,bool pressed , bool unenable1 , bool unenable2 ){

    setState(() {
      price[i] = counter[i][j] ;
      print(price[i]);
      widget.lPressed = pressed;
      widget.mPressed = unenable1;
      widget.sPressed =  unenable2; 
    });

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
           padding: const EdgeInsets.only(top: 15.0),
      child : Container(
        height: height*0.98,
        child: Stack(
     
     clipBehavior: Clip.none,
    
  children: [

   CardsDesign().locationMenuCard(context , '200' ,()=>print('')),   

Positioned(
  top: height*0.12,
  left: 0,
  right: 0,
  bottom: 0,
  child: SingleChildScrollView(
      child: 
      Container(
       height: height*1.2,
      child: Stack(
        clipBehavior: Clip.none,
        children: [


      Positioned(
        top: 5,
        left: 5,
        right: 5,
        child: RepeatCard().coffeCard(context, "assets/images/coffee0.png", "Coffee Machine", 'assets/images/add_Btn.png',()=> navigate(()=> Cart()) ,"Motcha frappuccino")
        ),
      

        Positioned(
        top: height *0.36,
        left: width * 0.04,
        right: width *0.70,
        child: btn('Menu', widget.menuPressed ,true, false , false),

        ),

      Positioned(
        top: height *0.36,
        left: width * 0.35,
        right: width *0.35,
      child: btn('Featured',widget.featuredPressed ,false , true , false),

        ),

      Positioned(
        top: height *0.36,
        left: width * 0.70,
        right: width *0.04,
       child: btn('Promo',widget.promoPressed ,false , false , true),

        ),

      Positioned(
        top: height *0.45,
        left: 0,
        right: 0,
        bottom: 0,

       child: 
     SingleChildScrollView(
       
        child: 
        Row (
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

         
          Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           
            CoffeeProductCard(categCard: CategCardModel( image: "assets/images/coffee2.png", title: 'Caramel Spiced Latte', navigate: ()=> navigate(()=> Cart())), sPrice: ()=>calculatePrice(0,0  ,true , false , false ), mPrice: ()=>calculatePrice(0,1 ,false , true , false  ), lPrice:  ()=>calculatePrice(0,2 ,true ,false , true ), price:  price[0].toString()),
          
           // ProductCard().product('assets/images/coffee1.png', 'Latte' ,()=>calculatePrice(0,0), ()=>calculatePrice(0,1), ()=>calculatePrice(0,2), price[0].toString()),
           // ProductCard().product('assets/images/coffee2.png', 'Latte' ,()=>calculatePrice(2,0), ()=>calculatePrice(2,1) , ()=>calculatePrice(2,2), price[2].toString()),
           // ProductCard().product('assets/images/coffee2.png', 'Latte' ,()=>calculatePrice(2,0), ()=>calculatePrice(2,1) , ()=>calculatePrice(2,2), price[2].toString()),

           ],),

         Column(children: [

            CoffeeProductCard(categCard: CategCardModel( image: "assets/images/coffee1.png", title: 'Caramel Spiced Latte', navigate: ()=> navigate(()=> Cart())), sPrice: ()=>calculatePrice(1,0 , true , false , false), mPrice: ()=>calculatePrice(1,1 ,false , true , false ), lPrice:  ()=>calculatePrice(1,2 ,false ,false , true ), price:  price[1].toString()),
             

           //ProductCard().product('assets/images/coffee2.png', 'Latte' ,()=>calculatePrice(1,0), ()=>calculatePrice(1,1) , ()=>calculatePrice(1,2), price[1].toString()),
           //ProductCard().product('assets/images/coffee1.png', 'Latte' ,()=>calculatePrice(3,0), ()=>calculatePrice(3,1) , ()=>calculatePrice(3,2), price[3].toString()),
           //ProductCard().product('assets/images/coffee2.png', 'Latte' ,()=>calculatePrice(2,0), ()=>calculatePrice(2,1) , ()=>calculatePrice(2,2), price[2].toString()),
 
        ],)
        ], 
        )
      ),
       
       ),

 
      Positioned(
        top: height *1.02,
        left: width * 0.15,
        right: width *0.08,
        child: CardsDesign().homeCard(context, '500', ()=> print('')),
      ),
      ]
      ,)
      ),
          
  
  )
        )],)
      
      
    
     )
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
