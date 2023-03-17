import 'package:axess_go/models/CategCardModel.dart';
import 'package:flutter/material.dart';

class  CoffeeProductCard extends StatelessWidget {
  const CoffeeProductCard({
    Key key,
    this.categCard,
    this.sPrice,
    this.mPrice,
    this.lPrice,
    this.price,
    this.check,
   // this.pressed,
   // this.unenable1,
   // this.unenable2,
  }) : super(key: key);

  final CategCardModel categCard;
  final Function sPrice ;
  final Function mPrice ;
  final Function lPrice ;
  final String price ;
  final bool check ;
  //final bool pressed ; 
 // final bool unenable1 ; 
 // final bool unenable2 ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: categCard.navigate,
    child:  Container(
  //  color: Colors.amber,
    height: 250,
    width: 198,
    child:  productIMGName(categCard.image , 60 , 140 , 20.0 , sPrice , mPrice , lPrice , price , check),
   /*
    child: Container(
  
     //  height: 100,
      //  width: 200,
        decoration: BoxDecoration(
         color: Colors.black,
         image: DecorationImage(
         image: AssetImage(categCard.image),
          fit: BoxFit.cover,
       ),
        borderRadius: BorderRadius.circular(14),
       
    ),
    margin: EdgeInsets.only(left: 20),
     // ),
      child: Stack(
      children : [
    

/*
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
*/
              /*
              ClipOval(
                child: Image.asset(
                  bankCard.icon,
                  height: Constants.padding * 3,
                  width: Constants.padding * 3,
                ),
              ),
              */

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
        //    ],
          //),
        

         Container(

          width : 180,
          height: 80,
        
        decoration: BoxDecoration(
         color: const Color(0XFF4f4f4f),
        borderRadius: BorderRadius.vertical(
          top : Radius.circular(0) , bottom: Radius.circular(15)
          //Constants.radius,
         ),
      ),
          child : Padding(padding: EdgeInsets.only(left: 10 , top: 5) ,
          child :Text(
            categCard.title,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.white
            )
           
          ))
          )
        
    ]),
     //) ),
      )
   // )],)
    //(
      //  horizontal: 60, //Constants.padding,
     //),

     // padding: const EdgeInsets.all(10),//(Constants.padding * 2),
     
  

      
      
    //)
    )*/
    ));
  }

  Widget productIMGName (String img , double h , double w , double r ,Function sPrice , Function mPrice,Function lPrice ,  String price , bool check){
return Container(
  child:Stack(
 // crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
 // Expanded(
  //  child: 
  Positioned(
    top: 0,
    bottom: 80,
    left: 4,
    right: 4,
    child: 
  Container(
       
       decoration: BoxDecoration(
         color: Colors.white,
          borderRadius: BorderRadius.circular(r)
       ),
        child: FittedBox(
        fit: BoxFit.fill,
         child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(r),//20.0),
                      child: Image.asset(img),
    ))),
  ),

  Positioned(
    top: 0,
    bottom: 218,
    left: 163,
    right: 2,
    child:  _buildAddBtn(()=>print(''), 
                             AssetImage(
                             'assets/images/topUp.png'
                           ),30,30),
                     
  ),
   Positioned(
    top: 140,
    bottom: 0,
    left: 3,
    right: 3,
    child: 
    Container(

        decoration: BoxDecoration(
         color: const Color(0XFF4f4f4f),
        borderRadius: BorderRadius.vertical(
          top : Radius.circular(0) , bottom: Radius.circular(15)
         ),
      ),
          child : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(padding: EdgeInsets.only(left: 110 , top: 5) ,
              child:Container(
                                             margin: EdgeInsets.only(left : 4),
                                              height: 30,
                                              width: 70,
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
                                              
              )),

              Padding(padding: EdgeInsets.only(left: 10 , top: 5) ,
                        child :Text(
                          categCard.title,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white
                          )
                        
                        )),
           SizedBox(height: 5,),
           Container(       clipBehavior: Clip.hardEdge,
                                            // margin: EdgeInsets.only(left : 125  ),
                                             height: 45,
                                              width: 150,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.
                                                  circular(20),
                                                ),
                                               //color: const Color(0XFFf4f4fe).withOpacity(0.7),
                                               // color: Colors.black ,
                                              ),

                                             child: 
                                             Row(
                                                
                                              mainAxisAlignment: MainAxisAlignment.center,  
                                            //  mainAxisSize: MainAxisSize.min,
                                            children: [

                                          //  Padding(padding: EdgeInsets.only(left: 15),  
                                          //  child:
                                         buildSizeBtn(lPrice, AssetImage('assets/images/LargeCup.png'), false, 55, 45 ),            
                                         buildSizeBtn(mPrice, AssetImage('assets/images/MediumCup.png'),false, 40, 40),
                                         buildSizeBtn(sPrice, AssetImage('assets/images/SmallCup.png'), true, 40, 40),

                                         //   Padding(padding: EdgeInsets.only(left: 15),  
                                          //  child:
                                           
                                            
                                              ],),
                                              
      

          )],)
         
          )
   )
    ]),

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
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            alignment: Alignment.center,
            image: logo,
             fit: BoxFit.cover,
          ),
          
        ),
      ),
    );
}


Widget buildSizeBtn(Function onTap, AssetImage logo ,bool check ,double h , double w ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(       
        height: h,
        width: w,
        decoration: BoxDecoration(
          color: check ?
          const Color(0XFFf4f4fe).withOpacity(0.2):
          const Color(0XFFf4f4fe).withOpacity(0),
          borderRadius: BorderRadius.circular(10),
       //   border: Border.all(color: Colors.black , width: 0.8),
          image: DecorationImage(
            alignment: Alignment.center,
            image: logo,
             fit: BoxFit.cover,
          ),
          
        ),
      ),
    );
}
}
