import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductCard  {


 Widget product( String image , String title ,Function sPrice , Function mPrice,Function lPrice ,  String price ) {
    return GestureDetector(
   // onTap: categCard.navigate,
    child:  Container(
    height: 210,
    width: 160,
    //color: Colors.deepPurple,
    margin: EdgeInsets.only(left: 35),
    //(
      //  horizontal: 60, //Constants.padding,
     //),

     // padding: const EdgeInsets.all(10),//(Constants.padding * 2),
      child: Stack(
        
        children: [
         
         productIMGName(image , 500 , 250 , 20.0),
       // Cards().buildImage(path: 'assets/images/LE.png',w: 25,h: 25), 

          Row( 
                                     children: [
                                            
                                           Container(
                                             margin: EdgeInsets.only(left : 4),
                                              height: 30,
                                              width: 60,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(25),
                                                ),
                                                color: const Color(0XFFf4f4fe),
                                              ),
                                              padding: EdgeInsets.symmetric(vertical: 3.5),
                                              child: Row(
                                                
                                              mainAxisAlignment: MainAxisAlignment.center,  
                                            children: [
                                              
                                            SizedBox(width: 5),
                                            Text(price ,
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                      color: Colors.black ,
                                                      fontSize: 20,
                                                        fontWeight: FontWeight.bold ,
                                                      )),
                                            
                                            SizedBox(width: 4),
                                            Text('L.E' ,
                                              textAlign: TextAlign.end,
                                              
                                              style: TextStyle(
                                              color: Colors.black ,
                                              fontSize: 10,
                                                fontWeight: FontWeight.w800 ,
                                              ))
                                              ],)
                                              
                                         ),

            ]),
             Padding(padding: EdgeInsets.only(top: 100),
                          child: _buildAddBtn(sPrice, 
                             AssetImage(
                             'assets/images/topUp.png'
                           ),30,30),
                          ),
                //  ClipRRect(
                  ///  child: new BackdropFilter(
                   // filter:  new ImageFilter.blur(sigmaX: 3.0 , sigmaY: 3.0),
                   //child:
                      Container(       clipBehavior: Clip.hardEdge,
                                             margin: EdgeInsets.only(left : 125  ),
                                              height: 150,
                                              width: 50,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.
                                                  circular(20),
                                                ),
                                               color: const Color(0XFFf4f4fe).withOpacity(0.7),
                                               // color: Colors.black ,
                                              ),

                                             child: 
                                             Column(
                                                
                                              mainAxisAlignment: MainAxisAlignment.center,  
                                              mainAxisSize: MainAxisSize.min,
                                            children: [

                                          //  Padding(padding: EdgeInsets.only(left: 15),  
                                          //  child:
                                           _buildAddBtn(sPrice, AssetImage('assets/images/small.png'), 50, 50),

                                           // Padding(padding: EdgeInsets.only(left: 15),  
                                          //  child:
                                          _buildAddBtn(mPrice, AssetImage('assets/images/medium.png'), 50, 50),
                                            
                                         //   Padding(padding: EdgeInsets.only(left: 15),  
                                          //  child:
                                            _buildAddBtn(lPrice, AssetImage('assets/images/large.png'), 50, 50),
                                        
                                            
                                              ],)
                                              
                                         ),
                   // ))

        ],) 
    /*
  

                                     ])


*/

      
      /*
       Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              
           
              

              /*
              Text(
                bankCard.number,
                textAlign: TextAlign.center,   
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              )
              */
            ],
          ),
            
          /*
     Container(

          width : 170,
          height: 40,
        
        decoration: BoxDecoration(
         color: Colors.black,
        borderRadius: BorderRadius.vertical(
          top : Radius.circular(0) , bottom: Radius.circular(15)
          //Constants.radius,
         ),
      ),
          child : Padding(padding: EdgeInsets.only(left: 3 , top: 5) ,
          child :Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.white
            )
           
          ))
          )*/],
     ) */
     ),
    );
  }

Widget productIMG (String image ) {
    return GestureDetector(
   // onTap: categCard.navigate,
    child:  Container(
    height: 140,
    width: 140,
    margin: EdgeInsets.only(left: 35),
    
      child: Stack(children: [
      
      iMG(image , 500 , 250 , 20.0),
      
        ],) 
    
     ),
    );
  }  

  Widget productIMGtxt (String image ) {
    return GestureDetector(
   // onTap: categCard.navigate,
    child:  Container(
    height: 170,
    width: 140,
     margin: EdgeInsets.only(left: 38),
    
      child: Stack(children: [
      
      productIMGName(image , 100 , 110 , 20.0),
      
        ],) 
    
     ),
    );
  } 
// , Function Subtract ,
/*
Widget cartProduct (String title  , String IMG_path , Function Add ,String digit , String price) {
  //  double width = MediaQuery.of(context).size.width;
  //  double height = MediaQuery.of(context).size.height;
  //  ViewportSize.getSize(context);
    return Container(
        height: ViewportSize.height* 0.16,
       // color: Colors.red,
        child: Card(
              color : const Color(0xFF21222D),
            //  margin: EdgeInsets.only(right: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              elevation: 0,
              
              child: Container(
           //     color: Colors.blue,
                margin: EdgeInsets.only(right: 5 , left: 10 , top: 7),
                child: Row(
                  children: [
               
                Container(
                 // color: Colors.red,
                  height: 100,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                    IMG(IMG_path,70,70,15),

                 //  Padding(padding: EdgeInsets.only(left: 50),
                   Positioned( 
                  bottom :ViewportSize.height*0.09,
                  right: ViewportSize.width*0.12,
                   child:  _buildAddBtn(()=>print(''),//Add, 
                           AssetImage(
                             'assets/images/small.png'
                           ),30,30),
                  )
                  ],)

                  
                ),
                 
                       
                  SizedBox(width: ViewportSize.width*0.03),    
                   
                    Container(
                        margin: EdgeInsets.only(top : ViewportSize.height*0.05),
                        padding: EdgeInsets.only(right: ViewportSize.width*0.11),
                       // color: Colors.amber,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        
                          children: [
             
                         
                          
                          Row(
                           children: [

                          //Padding(padding: EdgeInsets.only(left: 6),
                        //  child:
                           Text(price, style: TextStyle(
                              color: Colors.white ,
                              fontFamily: 'Montserrat',
                              fontSize: 19,
                                fontWeight: FontWeight.w600 ,
                              )),
                         //  ),
                           Padding(padding: EdgeInsets.only(top: 8 , left: ViewportSize.width*0.01),
                          child: Text('EGP', style: TextStyle(
                              color: Colors.white ,
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                                fontWeight: FontWeight.w600 ,
                              )),
                           ),

                          ],),
                         
                             
                           GradientText(
                              title,
                              style: const TextStyle(fontSize: 15 , fontWeight: FontWeight.w600),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                
                                const Color(0xFFFCFBFE),
                                const Color(0xFFC6B6F0),
                              ]),
                            ),
                              

                           ]), 
                        ),
                      
                        //  SizedBox(width: width*0.05), 
                      /*
                             Container(

                              child: Column(

                             mainAxisAlignment: MainAxisAlignment.center,   
                             children: [

                              SizedBox(width: 5,),
 
                             
                            GradientText(
                              title,
                              style: const TextStyle(fontSize: 15 , fontWeight: FontWeight.w600),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                
                                const Color(0xFFFCFBFE),
                                const Color(0xFFC6B6F0),
                              ]),
                            ),
                              
                            /*  
                             GradientText(
                              title2,
                              style: const TextStyle(fontSize: 15 , fontWeight: FontWeight.w600),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                
                                const Color(0xFFFCFBFE),
                                const Color(0xFFC6B6F0),
                              ]),
                            ),
                            */  
                              ],
                              ),
                             ),
                           */
            
                       
                  SizedBox(width: 5),    
                   
                    Container(
                        margin: EdgeInsets.only(top :10 , bottom: 2),
                      //  color: Colors.amber,
                        decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(25),
                                                ),
                                                color: const Color(0XFFf4f4fe),
                                              ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                        
                          children: [
             
                           Padding(padding: EdgeInsets.only(left: 6),
                          child: _buildAddBtn(()=>print(''),//Subtract, 
                             AssetImage(
                             'assets/images/Minus.png'
                           ),20,25),
                          ),
                         // Padding(padding: EdgeInsets.only(left: ),
                          //child: 
                          SizedBox(width: ViewportSize.width*0.01),

                          Text(digit , style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                                fontWeight: FontWeight.w600 ,
                              )),
                        //   ),
                            SizedBox(width: ViewportSize.width*0.01),

                           _buildAddBtn(Add, 
                           AssetImage(
                             'assets/images/Plus.png'
                           ),25,25),
                             
                         

                           ]), 
                        ),    
                           
                  ],
                ),
              ),
        ),
     );
  }
*/

Widget productIMGName (String img , double h , double w , double r ){
return Container(
  child:Column(
 // crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
  Expanded(
    child: Container(
       width: w ,//250,
       height: h,// 500,
        child: FittedBox(
        fit: BoxFit.fill,
         child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(r),//20.0),
                      child: Image.asset(img),
    ))),
  ),
  Column(
    children: [
          Container(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text('${'Pumpkin Spiced'}',
            style: TextStyle(
              color: const Color(0xFF534F4F),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ), //Text('${event_response.eventList[position].eventName}'
            ),
          ),
   Container(
    padding: const EdgeInsets.only(left: 5.0 , bottom: 15),
    child: Text('${'Lattee'}',
    style: TextStyle(
      color: const Color(0xFF534F4F),
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ), //Text('${event_response.eventList[position].eventName}'
    ),
  )
    ],
  )
]));

}

Widget iMG (String img , double h , double w , double r){
return Container(
       width: w,
       height: h,
        child: FittedBox(
        fit: BoxFit.fill,
         child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(r),
                      child: Image.asset(img), 

          //  event_response.imageLogoUrl +
            // event_response.eventList[position].event_logo,
          //  fit: BoxFit.fitWidth,
          ),
    ),
  );
}

Widget _buildAddBtn(Function onTap, AssetImage logo , double h , double w ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
  //      alignment: Alignment.topRight,
        height: h,
        width: w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.025),
          image: DecorationImage(
            alignment: Alignment.centerLeft,
            image: logo,
          ),
          
        ),
      ),
    );
}
}