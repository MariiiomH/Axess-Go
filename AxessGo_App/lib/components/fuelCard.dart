import 'package:axess_go/components/RepeatCard.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';

class FuelCard {  


Widget fuelAmountCard(BuildContext context , String logoPath , String title , String imgBtn ,Function navigate ,String txt ) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
      // color: Colors.white,
        height: height*0.35,
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
              margin: EdgeInsets.only(left: 15, right: 15 ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              elevation: 5,
              child: Container(
                 margin: EdgeInsets.all(10),
                child: Column(
                  children: [
               
             //       Expanded(
               //       flex: 8,
                 //       child: Row(
                   //       crossAxisAlignment: CrossAxisAlignment.start,
                     //     children: [

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            
                                            children: [
                                            
                                        
                                            Text(' '+title ,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.black ,
                                              fontSize: 18,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.normal ,
                                              )),
                                         

                                            SizedBox(height: height*0.01,),
                                         
                                         /*
                                            Text(Desc , style: TextStyle(
                                            color: const Color(0XFF534F4F),
                                            fontSize: 16,
                                            fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.normal ,
                                            )),
                                          */
                                           
                                          SizedBox(width: width*0.25),
                                          
                                          Row( 
                                            
                                            
                                            children: [
                                           
                                           

                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                            children:[
                                            
                                             Padding(padding: EdgeInsets.only(left: width * 0.22) ,
                                              child:
                                              RepeatCard().buildImage(path: logoPath ,alignment: Alignment.center, w: 60 , h: 45)),
                                              
                                              Padding(padding: EdgeInsets.only(left: width * 0.22) ,
                                              child:
                                              Text('Super 92' ,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: Colors.black ,
                                                  fontSize: 11,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal ,
                                                  ))),
                                            ]) ,
                                            
                                            SizedBox(width: width*0.13),

                                            Column(
                                            children:[
                                            
                                             RepeatCard().buildImage(path: logoPath ,alignment: Alignment.center, w: 60 , h: 45),
                                                 
                                              Text('Super 98' ,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: Colors.black ,
                                                  fontSize: 11,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal ,
                                                  )),
                                            ]),

                                            ],
                                          ),
                                        
                                             SizedBox(height: height*0.01, ),
                                             btn('EGP 500  ', Alignment.centerRight, ()=> print(''), 3),
                                             SizedBox(height: height*0.01, ),

                                             Row( 
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                    
                                                    SizedBox(width: width*0.08, ),
                                                    RepeatCard().keyboardBtn(()=> print('')),
                                                    SizedBox(width: width*0.08, ),
                                                    RepeatCard().btn('Next', ()=> print('') ,0.30 , 0.07 ),
                                                    
                                             ],)
                                           
                                         

                                            ],),
                                            
                                         // SizedBox(width: width* 0.1 ), 

                                         
                                         
                                           /*

                                            _buildAddBtn(() => Navigate(),
                                                AssetImage(
                                                  IMG_Btn,
                                                ),),
                                                */ 
                                            ]),
                                             
                          //   SizedBox(height: 20),
                            
                            
                          //  SizedBox(height: 15),
               
                           
                          //],
                        //),
                      ),
                //    )
            //      ],
                ),
              ),
           // ),
           // ),
          ],
        ),
     );
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
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end:  Alignment.topRight,
                                            colors: [
                                              const Color(0xFFe3edf1),
                                              const Color(0xfff1fdfe),
                                             
                                            ],
             ),

          /*
          shadows: [
            BoxShadow(
              color: const Color(0xFF5771c0),
              blurRadius: ViewportSize.width * 0.01,
              offset: Offset(2, 2),
            ),
          ],
          */
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