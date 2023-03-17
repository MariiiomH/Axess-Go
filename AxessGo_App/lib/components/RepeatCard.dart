import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';

class RepeatCard {  


Widget coffeCard(BuildContext context , String logoPath , String title , String imgBtn ,Function navigate ,String txt ) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
      // color: Colors.white,
        height: height*0.34,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
            bottom: 20,
            top: 0,
            left: 5,
            right: 0,
            child: Card(
              color : const Color(0XFFFCFCFC),
              margin: EdgeInsets.only(left: 15, right: 15 , bottom: 35),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              elevation: 5,
              child: Container(
                 margin: EdgeInsets.all(10),
                child: Row(
                  children: [
               
                    Expanded(
                      flex: 8,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                                          Column(

                                            
                                            children: [
                                            
                                        
                                            Text(title ,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.black ,
                                              
                                              fontSize: 22,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal ,
                                              )),
                                         

                                            SizedBox(height: height*0.01,),
                                         
                                            Text(txt, style: TextStyle(
                                            color: const Color(0XFF534F4F),
                                            fontSize: 16,
                                            fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.normal ,
                                            )),
                                          
                                             SizedBox(height: height*0.05, ),
                                             btn('Repeat', navigate  , 0.35 , 0.09),
                                         

                                            ],),
                                            
                                          SizedBox(width: width* 0.1 ), 

                                          Column(
                                            children:[
                                            
                                             buildImage(path: logoPath ,alignment: Alignment.center, w: 130 , h: 90),
                                            ]) 
                                          
                                         
                                           
                                            ]),
                          
                      ),
                
                  ],
                ),
              ),
            ),
            ),
            Positioned(
            top:  height *0.265,//179,
            bottom: height *0.04, //30,
            left: width* 0.12,  //45,
            right: width* 0.12, //45,
            child: container1(const Color(0XFFF6F6F6),30),
            ),
             Positioned(
            top: height *0.3,//200,
            bottom: height *0.01,//8
            left: width* 0.20,//75,
            right: width* 0.20,//75,
            child: container1(const Color(0XFFF0F0F3), 15),
            ),
          ],
        ),
     );
  }

Widget petrolCard(BuildContext context , String logoPath , String title , Function navigate ,String txt ) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
      // color: Colors.white,
        height: height*0.34,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
            bottom: 20,
            top: 0,
            left: 5,
            right: 0,
            child: Card(
              color : const Color(0XFFFCFCFC),
              margin: EdgeInsets.only(left: 15, right: 15 , bottom: 35),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              elevation: 5,
              child: Container(
                 margin: EdgeInsets.all(10),
                child: Row(
                  children: [
               
                    Expanded(
                      flex: 8,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                                          Column(

                                            
                                            children: [
                                            
                                        
                                            SizedBox(height: height*0.01,),

                                            Text(title ,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.black ,
                                              fontSize: 22,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal ,
                                              )),
                                         

                                            SizedBox(height: height*0.01,),
                                         
                                            Text("You\'re Running Out of" , style: TextStyle(
                                            color: const Color(0XFF534F4F),
                                            fontSize: 16,
                                            fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.normal ,
                                            )),
                                          
                                          Row(

                                          mainAxisAlignment: MainAxisAlignment.start,  
                                          children: [
                                           
                                           Text('Petrol in ' , style: TextStyle(
                                            color: const Color(0XFF534F4F),
                                            fontSize: 16,
                                            fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.normal ,
                                            )),

                                            Text(txt +' Km      ' , 
                                            style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold ,
                                            )),

                                          ],),

                                             SizedBox(height: height*0.02, ),
                                             btn('Repeat', ()=> print(''),0.35 , 0.09),
                                         

                                            ],),
                                            
                                          SizedBox(width: width* 0.1 ), 

                                          Column(
                                            children:[
                                            
                                             buildImage(path: logoPath ,alignment: Alignment.center, w: 130 , h: 150),
                                            ]) 
                                          
                                         
                                            ]),
                                             
                    
                      ),
         
                  ],
                ),
              ),
            ),
            ),
            Positioned(
            top:  height *0.265,//179,
            bottom: height *0.04, //30,
            left: width* 0.12,  //45,
            right: width* 0.12, //45,
            child: container1(const Color(0XFFF6F6F6),30),
            ),
             Positioned(
            top: height *0.3,//200,
            bottom: height *0.02,//8
            left: width* 0.20,//75,
            right: width* 0.20,//75,
            child: container1(const Color(0XFFF0F0F3), 15),
            ),
          ],
        ),
     );
  }




Widget container1 (Color color , double r) {
  return Container(

        height: ViewportSize.width * 0.15,
        decoration: BoxDecoration(
         
            borderRadius: BorderRadius.vertical(
            top : Radius.circular(0) , bottom: Radius.circular(r)),
            color: color,
   
        ),
    );
  }

Align buildImage({String path , Alignment alignment ,double w , double h}) {
    return Align(
      alignment: alignment ,                  
      child: Image.asset(path , width: w , height: h ),
    );
  }

Widget btn ( String text , Function onTap  , double w , double h ) {
  return GestureDetector(
    onTap: onTap,
      child:Container(
        alignment: Alignment.center,
        width: ViewportSize.width * w ,//0.35,
        height: ViewportSize.height * h, //0.09,
        decoration: BoxDecoration(
         
            borderRadius: BorderRadius.circular(18),
             gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end:  Alignment.topRight,
                                            colors: [
                                              const Color(0xFF84eaf7),
                                              const Color(0xff76cdf9),
                                             
                                            ],
             ),

        ),

          child: Row(
            
          mainAxisAlignment : MainAxisAlignment.center,    
       
        children: [
          
          
          Text(
          text,
          softWrap: false,
          style: TextStyle(
            color: const Color (0xFF22252E)  ,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
          )),
           
           SizedBox(width: 17,),
           RepeatCard().buildImage(path: 'assets/images/dots.png',alignment: Alignment.center,w:20,h:20),
          ],)
          
         
        
       ),
    );
  }

Widget keyboardBtn ( Function onTap  ) {
  return GestureDetector(
    onTap: onTap,
      child:Container(
        alignment: Alignment.center,
        width: ViewportSize.width * 0.30,
        height: ViewportSize.height * 0.07,
        decoration: BoxDecoration(
         
            borderRadius: BorderRadius.circular(18),
             gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end:  Alignment.bottomRight,
                                            colors: [
                                              const Color(0xFFecf5f8),
                                              const Color(0xffeef6f8),
                                               const Color(0xFFFFFFFF),
                                             
                                            ],
             ),

        ),

          child: Row(
            
          mainAxisAlignment : MainAxisAlignment.center,    
       
        children: [
          
           RepeatCard().buildImage(path: 'assets/images/Square.png',alignment: Alignment.center,w:20,h:20),

          ],)
          
         
        
       ),
    );
  }

  Widget buildBtn ( String txt , Color color , Color txtcolor ,Function onTap , double w , double r ) {
  return GestureDetector(
    onTap: onTap,
      child:Container(
        alignment: Alignment.center,
        width: ViewportSize.width * w ,
        height: ViewportSize.height * 0.08,
        decoration: BoxDecoration(
         
            borderRadius: BorderRadius.circular(r),
             color: color ,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: ViewportSize.width * 0.01,
              offset: Offset(2, 1),
            ),
          ],
        ),

          child: Row(
            
          mainAxisAlignment : MainAxisAlignment.center,    
       
        children: [
          
          Text(
          txt,
          softWrap: false,
          style: TextStyle(
            color: txtcolor ,  
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
          )),
          
          ],)
          
         
   
        
       ),
    );
  }

   Widget iconPrefixBtn ( String txt , Color color , Color txtcolor ,Function onTap , double w , double r ) {
  return GestureDetector(
    onTap: onTap,
      child:Container(
        alignment: Alignment.center,
        width: ViewportSize.width * w ,
        height: ViewportSize.height * 0.08,
        decoration: BoxDecoration(
         
            borderRadius: BorderRadius.circular(r),
             color: color ,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: ViewportSize.width * 0.01,
              offset: Offset(2, 1),
            ),
          ],
        ),

          child: Row(
            
          mainAxisAlignment : MainAxisAlignment.center,    
       
        children: [

          RepeatCard().buildImage(path: 'assets/images/creditCard.png',alignment: Alignment.center,w:50,h:50),
          
          SizedBox(width: 10,),

          Text(
          txt,
          softWrap: false,
          style: TextStyle(
            color: txtcolor ,  
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
          )),
           
          ],)
          
         
        
       ),
    );
  }

}