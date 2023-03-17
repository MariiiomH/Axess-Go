import 'package:axess_go/components/RepeatCard.dart';
import 'package:axess_go/components/productCard.dart';
import 'package:axess_go/routes/EnterCVV.dart';
import 'package:axess_go/routes/PaymentChoice.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';


class CheckOut extends StatefulWidget {
  const CheckOut({Key key}) : super(key: key);

  @override
  _CheckOut createState() => _CheckOut();
}


class _CheckOut  extends State<CheckOut> {


  void navigate(Function page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page()));
  }

  @override
  Widget build(BuildContext context) {
   // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return MaterialApp(
    home: Scaffold(
    backgroundColor: const Color(0xFFe9eaee), // const Color(0xFF21222D), 
    body : Padding(
           padding: const EdgeInsets.only(top: 25.0),
      child : Stack(
     
   clipBehavior: Clip.none,
    
  children: [

Positioned(

  top: 0,
  bottom: 280,
  right: 0,
  left: 15,
  child:  Container(
     // color: Colors.amber,
      margin: EdgeInsets.only(top: height *0.05),
      child: Container(
       child : SingleChildScrollView(
         scrollDirection: Axis.vertical,
         clipBehavior: Clip.hardEdge,
         child: Row(
           children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [

                
                ProductCard().productIMGtxt('assets/images/coffee1.png'),
                ProductCard().productIMGtxt('assets/images/coffee2.png'),
                ProductCard().productIMGtxt('assets/images/coffee1.png'),


               
         
        ]),
         SizedBox(height: height*0.05,),

         Column(
         children: [

                ProductCard().productIMGtxt('assets/images/coffee1.png'),
                ProductCard().productIMGtxt('assets/images/coffee2.png'),
                ProductCard().productIMGtxt('assets/images/coffee1.png'),

         
        ]),

         ],)
         
         
       ) )
    
    ),
),



 Container(
      
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: height *0.55 ),
    //  height: height *0.22,
      decoration: BoxDecoration(
            
            borderRadius: BorderRadius.vertical(
          top : Radius.circular(30) , bottom: Radius.circular(0)
          //Constants.radius,
         ),
             color: const Color(0xFFe9eaee),
      ),
      child: btn('EGP 10', Alignment.center, ()=> print('') ,15),
 ),
 


    

      ],)
      
      
    
     )));
     
  } 

 Widget btn ( String text , Alignment alignment , Function onTap , double w ) {
  return GestureDetector(
    onTap: onTap,
      child: Container(
        alignment: alignment,
      //  width: ViewportSize.width * w ,
      //  height: ViewportSize.width * 0.12,
        decoration: BoxDecoration(
         
            borderRadius:BorderRadius.vertical(
             top : Radius.circular(30) , bottom: Radius.circular(0)),

            gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end:  Alignment.center,
                                            colors: [
                                              const Color(0xFF595259).withOpacity(0.7),
                                              const Color(0xFF767272).withOpacity(1),
                                              const Color(0xFF7a7474).withOpacity(0.9),

                                            ],
                                         
             ),
            
          
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: ViewportSize.width * 0.01,
              offset: Offset(2, 2),
            ),
          ],
          
        ),

          child: Column(
            
            
        children: [

         Padding(padding: EdgeInsets.only(bottom :45 , left: 55, top: 35),
          child : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

         
          Text(
          'Total Amount  ',
          softWrap: false,
          style: TextStyle(
            color: const Color (0xFFFFFFFF)  ,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
         )),
        
        SizedBox(width: 110,),

        Text(
          text,
          softWrap: false,
          style: TextStyle(
            color: const Color (0xFFFFFFFF)  ,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
          )),
        

          ],) 
       ),

     
        RepeatCard().iconPrefixBtn('Pay With Card', const Color(0xFFFFFFFF), const Color (0xFF22252E),()=> navigate(()=> EnterCVV()),0.85,15),
        SizedBox(height: 20,),
        RepeatCard().buildBtn('Cash', const Color(0xFF21222D),const Color (0xFFFFFFFF) ,()=> print(''),0.85,15),

        TextButton(
        onPressed: () => navigate(()=>PaymentChoice()),
        child: Text(
          'Add another method',
            style: TextStyle(
            color: const Color(0Xffd3d4ce),
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),  

      // ],)),

        

          ],)
   
    )
    );
  }

}




