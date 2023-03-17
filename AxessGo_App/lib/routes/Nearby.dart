import 'package:axess_go/components/CardsDesign.dart';
import 'package:axess_go/routes/Vending.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';


class Nearby extends StatefulWidget {
  const Nearby ({Key key}) : super(key: key);

  @override
  _Nearby createState() => _Nearby();
}


class _Nearby extends State<Nearby> {


  void navigate(Function page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page()));
  }

  @override
  Widget build(BuildContext context) {
   // double width = MediaQuery.of(context).size.width;
  //  double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return MaterialApp(
    home: Scaffold(
    backgroundColor: const Color(0xFFE5E5E5), 
    body : Padding(
           padding: const EdgeInsets.only(top: 45.0),
      child : Stack(
     
     clipBehavior: Clip.none,
    
  children: [
 
Positioned(

  top: 15,
  width: 100,
  left: 20,
  child: btn('Recent', Alignment.center, ()=> navigate(()=>Vending()), 5),

),

Positioned(

  top: 15,
  width: 100,
  left: 140,

  child: btn('Nearby', Alignment.center, ()=> print(''), 5),

),

Positioned(

  top: 15,
  width: 130,
  left: 260,

  child: btn('Promotions', Alignment.center, ()=> print(''), 5),

),


 

     Container(
   
  
     margin: EdgeInsets.only(left: 20,top: 85),
     child: SingleChildScrollView(
      child: Column(
        children: [

          CardsDesign().nearbyIMGCard(context,"Mobile", 'assets/images/mobilepetrol.png',()=> print('') , "" , 0.1),
   
          CardsDesign().nearbyIMGCard(context,"Chill Out", 'assets/images/petrol2.png',()=> print('') , "" , 0.1),
                          
          CardsDesign().nearbyIMGCard(context,"Store", 'assets/images/store_.png',()=> print('') , "" , 0.1),
    
          CardsDesign().nearbyIMGCard(context,"Vending Machine", 'assets/images/vend_machine.png',()=> print('') , "" , 0.1),
        
        ],)
      ),
      ),
      ],)
      
      
    
     )));
     
  } 

 Widget btn ( String text , Alignment alignment , Function onTap , double w ) {
  return GestureDetector(
    onTap: onTap,
      child:Container(
        alignment: alignment,
        width: ViewportSize.width * w ,
        height: ViewportSize.width * 0.12,
        decoration: BoxDecoration(
         
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(13),
            
          color: const Color(0xFFFFFFFF),
         
        ),

          child: Text(
          text,
          softWrap: false,
          style: TextStyle(
            color: const Color (0xFF22252E)  ,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
          )),
        
       ),
    );
  }

}




