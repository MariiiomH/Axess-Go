import 'package:axess_go/components/gradient_text.dart';
import 'package:axess_go/components/productCard.dart';
import 'package:axess_go/models/CartModel.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  
  final CartModel cartList;
  final Function add;
  final Function subtract;
  final int quantity ;

 
  CartCard({this.cartList , this.add , this.subtract, this.quantity});


 

  @override
  Widget build(BuildContext context) {
    return Container(
       height: ViewportSize.height* 0.15,
        child: Card(
              color : const Color(0xFF21222D),
            //  margin: EdgeInsets.only(right: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              elevation: 0,
              
              child: Container(
                margin: EdgeInsets.only(right: 5 , left: 10 , top: 7),
                child: Row(
                  children: [
               
                Container(
                  height: 100,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                    ProductCard().iMG(cartList.imgPath,70,70,15),

                 //  Padding(padding: EdgeInsets.only(left: 50),
                   Positioned( 
                  bottom :ViewportSize.height*0.09,
                  right: ViewportSize.width*0.12,
                   child: _buildAddBtn(()=>print(''),//Add, 
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        
                          children: [
             
                         
                          
                          Row(
                           children: [

                           Text((cartList.price * quantity).toString(), style: TextStyle(
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
                              cartList.title,
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

                    SizedBox(width: 5),    
                   
                    Container(
                        margin: EdgeInsets.only(top :10 , bottom: 2),
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
                          child: _buildAddBtn(subtract, 
                             AssetImage(
                             'assets/images/Minus.png'
                           ),20,25),
                          ),

                          SizedBox(width: ViewportSize.width*0.01),

                          Text(quantity.toString(), style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 22,
                                fontWeight: FontWeight.w600 ,
                              )),
                        //   ),
                            SizedBox(width: ViewportSize.width*0.01),

                           _buildAddBtn(add,
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

Widget _buildAddBtn(Function onTap, AssetImage logo , double h , double w ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
