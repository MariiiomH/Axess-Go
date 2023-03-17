import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';

class Cards {  

Widget fullCard(BuildContext context , String logoPath , String title , String imgBtn ,Function navigate ,String txt ) {
    double width = MediaQuery.of(context).size.width;
 // double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
        color: const Color(0xFF22252e),
        child: Column(
          children: [
            Card(
              color : const Color(0xFF2f323d),
              margin: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 5,
              child: Container(
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
                                            buildImage(path: logoPath , w: 20 , h: 20),
                                              Text('    '),
                                              Text(title , style: TextStyle(
                                              color: Colors.white ,
                                              fontSize: 20,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.normal ,
                                              )),

                                           SizedBox(width: width* 0.52 ), 

                                            _buildAddBtn(() => navigate(),
                                                AssetImage(
                                                  imgBtn,
                                                ),),
                                            ]),
                                              
                              SizedBox(height: 10),

                              Text(txt , style: TextStyle(
                              color: Colors.white ,
                              fontSize: 17,
                                fontWeight: FontWeight.normal ,
                              )),

                   
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
     );
  }
  
Widget txtBtnCard(BuildContext context , String title , String imgBtn ,Function navigate , String txt , double w) {
    double width = MediaQuery.of(context).size.width;
   //double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
        color: const Color(0xFF22252e),
        child: Column(
          children: [
            Card(
              color : const Color(0xFF2f323d),
              margin: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 5,
              child: Container(
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

                                            Text(title , style: TextStyle(
                                              color: Colors.white ,
                                               fontSize: 20,
                                               fontFamily: 'Poppins',
                                               fontWeight: FontWeight.normal ,
                                              )),

                                              SizedBox(width: width* w ),

                                              _buildAddBtn(() => navigate(),
                                                AssetImage(
                                                  imgBtn,
                                                ),),
                                            ]),
                                              
                           //   SizedBox(height: 10),

                            
                              Text(txt , style: TextStyle(
                              color: Colors.white ,
                              fontSize: 17,
                                fontWeight: FontWeight.normal ,
                              )),
                           
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
     );
  }
  
Widget imgCard(BuildContext context , String logoPath , String title ) {
   // double width = MediaQuery.of(context).size.width;
  //  double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
        color: const Color(0xFF22252e),
        child: Column(
          children: [
            Card(
              color : const Color(0xFF2f323d),
              margin: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 5,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                               Row( 
                                     children: [
                                            buildImage(path: logoPath , w: 60 , h: 60 ),
                                              Text('    '),
                                              Text(title , style: TextStyle(
                                              color: Colors.white ,
                                              fontSize: 22,
                                                fontWeight: FontWeight.w400 ,
                                              )),

                                            ]),
                                              
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
     );
  }
  
  
  Widget txtCard(BuildContext context , String title , String txt) {
    double width = MediaQuery.of(context).size.width;
  //  double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
        color: const Color(0xFF22252e),
        child: Column(
          children: [
            Card(
              color : const Color(0xFF2f323d),
              margin: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 5,
              child: Container(
                margin: EdgeInsets.all(15),
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
                                              color: Colors.white ,
                                              fontSize: 20,
                                                fontWeight: FontWeight.bold ,
                                              )),

                                              SizedBox(width: width* 0.30 ),
                                            ]),
                                              
                              SizedBox(height: 10),

                              Text(txt , style: TextStyle(
                              color: Colors.white ,
                              fontSize: 18,
                                fontWeight: FontWeight.normal ,
                              )),
                   
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
     );


  }

Widget visaCard(BuildContext context , String title ,String cardNum , String imgBtn ,Function navigate , String name) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
     //   color: Colors.blue,
        child: Column(
          children: [
            Card(
              color : const Color(0xFF191a15),
              margin: EdgeInsets.only(left: width *0.05 , right: width*0.05 , bottom: height*0.02),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 5,
              child: Container(
             //   color: Colors.amber,
             //   margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
              
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    

                    const Color(0xff4d4d4d),
                    const Color(0xff4d4d5d),
                    const Color(0xFFc4b6b6),
                    
                  ],
                
                )),
                child: Row(
                  children: [
               
                    Expanded(
                      flex: 8,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(padding: EdgeInsets.only(left : width*0.08 , bottom: height*0.001 , top: height * 0.02) ,
                            child:Text('Card Holder' , style: TextStyle(
                                              color: Colors.white ,
                                               fontSize: 16,
                                               fontFamily: 'Poppins',
                                               fontWeight: FontWeight.bold ,
                                              )),
                            ),
                            Padding(padding: EdgeInsets.only(left : width*0.08 , bottom:  height*0.06) ,
                            child:Text(name , style: TextStyle(
                              color: Colors.white ,
                              fontSize: 18,
                                fontWeight: FontWeight.normal ,
                              )),
                            ),

                            Padding(padding: EdgeInsets.only(left : width*0.08 , bottom: height*0.01) ,
                            child:Text('Card Number' , style: TextStyle(
                                              color: Colors.white ,
                                               fontSize: 16,
                                               fontFamily: 'Poppins',
                                               fontWeight: FontWeight.bold ,
                                              )),
                            ),
                            Padding(padding: EdgeInsets.only(left : width*0.08 , bottom: height*0.01) ,
                            child:Text(cardNum , style: TextStyle(
                              color: Colors.white ,
                              fontSize: 18,
                                fontWeight: FontWeight.normal ,
                              )),
                            ),

                              Row( 
                                   mainAxisAlignment: MainAxisAlignment.center,
                                     children: [

                                            Text(title , style: TextStyle(
                                              color: Colors.white ,
                                               fontSize: 20,
                                               fontFamily: 'Poppins',
                                               fontWeight: FontWeight.normal ,
                                              )),

                                              SizedBox(width: width* 0.45 ),

                                              _buildAddBtn(navigate,
                                                AssetImage(
                                                  imgBtn,
                                                ),),
                                            ]),
                                              

                           
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
     );
  }
  


Align buildImage({String path , double w , double h}) {
    return Align(
      alignment: Alignment.topLeft ,                  
      child: Image.asset(path , width: w , height: h ),
    );
  }

Column balanceImage({String path}) {
    return Column(
      children: [

       Container(
        margin: EdgeInsets.only(left: 65) ,
        child: Image.asset(path , width: 30 , height: 30),
       ),
      Text('5,000' ,
                textAlign: TextAlign.center,                            
                style: TextStyle(
                color: Colors.black ,
                fontSize: 20,
                fontWeight: FontWeight.bold ,
        )),

      ],            
    );
  }

Widget _buildAddBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
  //      alignment: Alignment.topRight,
        height: 50.0,
        width: 50.0,
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
