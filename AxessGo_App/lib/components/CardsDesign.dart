import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';

class CardsDesign {  



Widget nearbyCard(BuildContext context , String title , String balance ,String imgBtn ,Function navigate , String txt , double w) {
    double width = MediaQuery.of(context).size.width;
   // double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
        child: Card(
              color : Colors.white,
              margin: EdgeInsets.only(right: 15 , top: 25 , bottom: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              elevation: 5,
              child: Container(
             //  color: Colors.blue,
               margin: EdgeInsets.only(right: 5 , left: 10 ),
                child: Row(
                  children: [
               
                    Expanded(
                      flex: 8,
                      child: Container(
                      
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                               Row( 
                                     children: [

                                            Text(title , style: TextStyle(
                                              color: Colors.black ,
                                              fontSize: 20,
                                                fontWeight: FontWeight.bold ,
                                              )),

                                              
                                              SizedBox(width: width* 0.45),

                                            Column(
                                             
                                              children:[   

                                             Padding(padding: EdgeInsets.only(top: 20),   
                                              child:  _buildAddBtn(() => navigate(),
                                                AssetImage(
                                                  imgBtn,
                                                ),
                                                30, 30),
                                             ),
                                       
                                               ] )  
                                            ]),

                            
                          
                            
                            Row(
                              children:[
                             

                            Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children:[

                              Row(
                                children: [
                              
                              Padding(padding: EdgeInsets.only(left: 25),
                              child: buildImage(path: 'assets/images/stars.png' , h: 40 , w: 40)),
                              
                              SizedBox(width: 5,),

                              Text('(20)' , style: TextStyle(
                              color: Colors.black ,
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                                fontWeight: FontWeight.w400 ,
                              )),

                                ],
                              ),

                              Text('4.4 Km From Your' , style: TextStyle(
                              color: Colors.black ,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                                fontWeight: FontWeight.w400 ,
                              )),

                              Text('Location' , style: TextStyle(
                              color: Colors.black ,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                                fontWeight: FontWeight.w400 ,
                              )),

                              ]), 
                              SizedBox(width: 35),
                             
                              Padding(padding: EdgeInsets.only(top: 20),
                              child:CardsDesign().balanceImage(balance : balance  ,path: 'assets/images/LE.png')), 
                              ])
                          ],
                        ),
                      ),
                    )
                  ],

                  
                ),
              ),
            ),
     );
  }

  Widget nearbyIMGCard (BuildContext context , String title , String imgBtn ,Function navigate , String txt , double w) {
  //  double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
        height: height* 0.22,
        child: Card(
              color : Colors.white,
              margin: EdgeInsets.only(right: 15 , top: 20 , bottom: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              elevation: 5,
              child: Container(

             
               margin: EdgeInsets.only(right: 5 , left: 10 , top: 7),
                child: Row(
                  children: [
               
                 
                  _leftIMG(
                            AssetImage(
                                imgBtn,
                          ),),
                       
                   SizedBox(width: 10),    
                    Expanded(
                      flex: 8,
                      child: Container(
                        margin: EdgeInsets.only(top :10 , bottom: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        
                          children: [


                           Text(title , style: TextStyle(
                                color: Colors.black ,
                                fontSize: 20,
                                fontWeight: FontWeight.bold ,
                           )),
                                            

                            
                            SizedBox(height: 20),
                            
                      
                             Container(
                              height: 25,
                           //   color: Colors.amber, 
                              child: Row(

                             mainAxisAlignment: MainAxisAlignment.start,   
                             children: [
                             
                              Padding(padding: EdgeInsets.only(left: 25 ),
                              child: buildImage(path: 'assets/images/stars.png' , h: 50 , w: 50)),
                              
                              SizedBox(width: 5,),

                              Text('(20)' , style: TextStyle(
                              color: Colors.black ,
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                                fontWeight: FontWeight.w400 ,
                              )),  
                              ],
                              ),
                             ),
                           
                             Text('4.4 Km From Your Location' , style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                                fontWeight: FontWeight.normal ,
                              )),
                           

                              ]), 
                        ),
                      ),
                  ],
                ),
              ),
            ),
     );
  }

Widget gasNearbyCard(BuildContext context , String title , String balance ,String imgBtn ,Function navigate , String txt , double w) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
        height: height * 0.23,
        child: Card(
              color : const Color (0XFFF6F6F6),
              margin: EdgeInsets.only(right: 10 , top: 25 , bottom: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              elevation: 5,
              child: Container(
             // color: Colors.blue,
               margin: EdgeInsets.only(right: 5 , left: 10 , top: 5 ),
                child: Row(
                  children: [
               
                    Expanded(
                      flex: 8,
                      child: Container(
                       
                       margin: EdgeInsets.only(top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                               Row( 
                                     children: [

                                           Text('  '+ title , style: TextStyle(
                                              color: Colors.black ,
                                              fontSize: 18,
                                                fontWeight: FontWeight.w600 ,
                                              )),

                                           SizedBox(width: width* 0.02),
                                              
                                           Padding(padding: EdgeInsets.only(top:6),   
                                           child: _buildAddBtn(() => navigate(),
                                                AssetImage(
                                                  imgBtn,
                                                ),
                                                15,15),
                                           ),

                                            /*
                                            Column(
                                             
                                              children:[   

                                             Padding(padding: EdgeInsets.only(top: 20),   
                                              child:  _buildAddBtn(() => Navigate(),
                                                AssetImage(
                                                  IMG_Btn,
                                                ),),
                                             ),
                                             
                                               ] ) 
                                               */ 
                                            ]),

                            
                         SizedBox(height: 5),
                         
                          Container(
                           
                          height: 85,
                          width: 350,
                       //  color: Colors.blue,
                           child:
                            FittedBox(
                            clipBehavior: Clip.hardEdge,
                             fit: BoxFit.fill,
                             child: ClipRRect(
                           clipBehavior: Clip.hardEdge,
                            borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                  'assets/images/gpsMap.png', 
                  ))),
                 
                 ),
                           /*
                            Row(
                              children:[
                             

                            Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children:[

                              Text('4.4 Km From Your' , style: TextStyle(
                              color: Colors.black ,
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                                fontWeight: FontWeight.w400 ,
                              )),

                              Text('Location' , style: TextStyle(
                              color: Colors.black ,
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                                fontWeight: FontWeight.w400 ,
                              )),

                              ]), 
                              SizedBox(width: 25,),
                              Cards_().BalanceImage(balance : balance  ,path: 'assets/images/LE.png'), 
                              ])
                              */
                          ],
                        ),

                      ),
                    )
                  ],
                ),
              ),
            ),
     //     ],
       // ),
     );
  }  

Widget locationMenuCard (BuildContext context , String balance ,Function navigate) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
        height: height* 0.12,
        child: Card(
              color : const Color(0xFFFFFFFF),
              margin: EdgeInsets.only(left: width*0.06, right: width*0.05 , top: height* 0.02 , bottom: height*0.01),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 6,
              child: Container(

              //  color: Colors.amber,
              // margin: EdgeInsets.only(right: 5 , left: width*0.01 ),
                child: Row(
                  children: [
               
                  SizedBox(width: width *0.03),

                  _buildAddBtn(()=>print(''),
                    AssetImage(
                      'assets/images/navigate.png'
                    ), 40, 40),

                  SizedBox(width: width *0.07),

                   _buildAddBtn(()=>print(''),
                    AssetImage(
                      'assets/images/gps.png'
                    ), 30, 30),       
                       
                   SizedBox(width: width *0.03),   
/*
                    Stack(
                      children: [

                       Container(
                        width: width *0.25,
                        margin: EdgeInsets.only(top :15 , bottom: 15 , left: 20 , right: 20),
                         child: Cards_()._leftIMG(
                           AssetImage(
                           'assets/images/container.png')
                           ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 3 , top: 20),
                        child: Cards_().BalanceImage(balance : balance  ,path: 'assets/images/LE.png'), 
                        )
                        
                        

                      ],
                    )  
                    */
                  ],
                ),
              ),
            ),
     );
  }

  Widget homeCard (BuildContext context , String balance ,Function navigate) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
        height: height* 0.18,
        child: Card(
              color : Colors.black,
              margin: EdgeInsets.only(right: 15 , top: 20 , bottom: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 5,
              child: Container(

             
               margin: EdgeInsets.only(right: 5 , left: 10 , top: 7),
                child: Row(
                  children: [
               
                  SizedBox(width: width *0.05),

                  _buildAddBtn(()=>print(''),
                    AssetImage(
                      'assets/images/home.png'
                    ), 40, 40),

                  SizedBox(width: width *0.07),

                   _buildAddBtn(()=>print(''),
                    AssetImage(
                      'assets/images/freq.png'
                    ), 40, 40),       
                       
                   SizedBox(width: width *0.03),   

                    Stack(
                      children: [

                       Container(
                        width: width *0.25,
                        margin: EdgeInsets.only(top :15 , bottom: 15 , left: 20 , right: 20),
                         child: CardsDesign()._leftIMG(
                           AssetImage(
                           'assets/images/container.png')
                           ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 3 , top: 20),
                        child: CardsDesign().balanceImage(balance : balance  ,path: 'assets/images/LE.png'), 
                        )
                        
                        

                      ],
                    )  
                  ],
                ),
              ),
            ),
     );
  }

    
Widget balanceCard(BuildContext context, String title , String imgBtn , String txt) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
     //   color: const Color(0xFF22252e),
         width: 650,
        child: Column(
          children: [
        Container(
            height: 130,
            width: 650,
            decoration: BoxDecoration(
              
                borderRadius: BorderRadius.circular(25.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFF59ABFB),
                    const Color(0xff93d4f5),
                    const Color(0xFFB0e2f2),
                  ],
                
                )),
                margin: EdgeInsets.all(10),

                child: Row(
                  children: [
               
                    Expanded(
                      flex: 8,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                               Row( 
                                     children: [
                                            
                                              Text('    '),
                                              Container(
                                              margin: EdgeInsets.all(15),
                                              height: height*0.045,
                                              width: width * 0.23,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(7),
                                                ),
                                                color: const Color(0XFFf4f4fe),
                                              ),
                                              padding: EdgeInsets.symmetric(vertical: 3.5),
                                              child: Text(title ,
                                              textAlign: TextAlign.center,
                                              
                                              style: TextStyle(
                                              color: Colors.black ,
                                              fontSize: 20,
                                                fontWeight: FontWeight.bold ,
                                              ))),

                                          // SizedBox(width: width* 0.55 ), 

                                              Text('    '),
                                              Container(
                                              height: height*0.045,
                                              width: width * 0.23,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(7),
                                                ),
                                                color: const Color(0XFFf4f4fe),
                                              ),
                                              padding: EdgeInsets.symmetric(vertical: 3.5),
                                            
                                    child: Row(
                                            
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [

                                       
                                              Text('- ' ,
                                              textAlign: TextAlign.center,
                                              
                                              style: TextStyle(
                                              color: Colors.red ,
                                              fontSize: 20,
                                               fontWeight: FontWeight.bold ,
                                              )),
                                               Text('500' ,
                                              textAlign: TextAlign.center,
                                              
                                              style: TextStyle(
                                              color: Colors.black ,
                                              fontSize: 20,
                                               fontWeight: FontWeight.bold ,
                                              )),
    
                                              ],)),

                                             /*
                                            _buildAddBtn(() => print(""),
                                                AssetImage(
                                                  IMG_Btn,
                                                ),),
                                                */
                             ]),
                                  
                              Row(    

                              children:[

                                Container(
                                              margin: EdgeInsets.only(left: 45 , bottom: 3),
                                              height: height*0.08,
                                              width: width * 0.40,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                color: Colors.white.withOpacity(0.25),
                                 ),

                                ),

                             

                           Column (
                           
                             children:[
                              Container(
                                        //  margin: EdgeInsets.only(left: 50 ),
                                          height: height*0.045,
                                          width: width * 0.23, 
                                          child : Text('Top up' ,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                          color: Colors.black ,
                                          fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          )),
                               ),
                          
                          Container(
                                margin: EdgeInsets.only(left: 10, bottom: 7),
                                              height: height*0.045,
                                              width: width * 0.075,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(25),
                                                ),
                                                color: const Color(0XFFf4f4fe),
                                              ),
                            //  padding: EdgeInsets.only(left: 35),                              
                              child:  _buildAddBtn(() => print(""),
                                                AssetImage(
                                                  imgBtn,
                                                ),30,30),
                            ),
                           ]),
                           
                          ])],
                          
                        ),
                        
                      ),
                    )
                  ],
                ),
              ),
            ],
        ),
     );
  }

Align buildImage({String path , double w , double h }) {
    return Align(
      alignment: Alignment.topLeft ,                  
      child: Image.asset(path , width: w , height: h),
    );
  }


Row balanceImage({String balance,String path}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     
    SizedBox(
      height: 40,
      child:Container(
      margin: EdgeInsets.only(top: 10 , left: 35),
      alignment: Alignment.center,
      child: Text(balance ,
                textAlign: TextAlign.center,                            
                style: TextStyle(
                color: Colors.black ,
                fontSize: 25,
                fontWeight: FontWeight.bold ,
        )),
 ) ),
      SizedBox(
        height: 55,
         child : Padding(padding: EdgeInsets.only(bottom: 20 ) ,
         child:  Image.asset(path , width: 40 , height: 40),
   ) ),
      ],            
    );
  }

Widget _buildAddBtn(Function onTap, AssetImage logo , double h , double w ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
  //      alignment: Alignment.topRight,
        height: h,
        width:  w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.025),
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: logo,
          ),
        ),
      ),
    );
}


Widget _leftIMG (AssetImage logo) {
    return Container(

    height: 100,
    width: 110,
    decoration: BoxDecoration(
         // color: Colors.black,
         image: DecorationImage(
         image: logo ,
          fit: BoxFit.cover,
       ),
        borderRadius: BorderRadius.circular(15),
       
    ),
    );
 }
}