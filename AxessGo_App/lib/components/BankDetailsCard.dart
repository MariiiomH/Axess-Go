import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';

class BankDetailsCard {  


Widget bankCard(BuildContext context , String imgBtn ,Function navigate  , String txt, double w) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Container(
        color: const Color(0xFF22252e),
        child: Column(
          children: [
           
              Container(
                height: height*0.25,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFecf2f9),
                    const Color(0xffdce6f4),
                    const Color(0xffdbe6f2),
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
                                            
                                            buildText(text:'Bank Name :' , color: const Color(0xFF677894)),
                                            buildText(text:'HSBC Bank' , color : const Color(0xFF31456a)),
                                         
                                            SizedBox(width: width* w), 
                                            
                                            Padding(padding: EdgeInsets.only(top:15),
                                          
                                            child:  _buildAddBtn(() => navigate(),
                                                AssetImage(
                                                  imgBtn,
                                                ),),
                                            )]),
                                 
                                // SizedBox(height: 10),
                                 Row( 
                                     children: [

 
                                            buildText(text:'Account Number :' , color: const Color(0xFF677894) ),
                                            buildText(text:'1234 5678 9000' , color : const Color(0xFF31456a)),
                                         
                                            ]), 


                                 Row( 
                                     children: [


                                            buildText(text:'Beneficiary :' , color: const Color(0xFF677894) ),
                                            buildText(text:'Beneficiary name' , color : const Color(0xFF31456a)),
                                         
                                            ]), 

                                
                                Row( 
                                     children: [

                                            buildText(text:'IBAN Number :' , color: const Color(0xFF677894) ),
                                            buildText(text:'EG09002' , color : const Color(0xFF31456a)),

                                            ]), 
                          ],
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

Widget _buildAddBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30.0,
        width: 30.0,
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

 Padding buildText(
      {String text , Color color}) {
    return Padding(
      padding: EdgeInsets.only(left: 12 , top: 15),
      child: Text(
        text,
        style: TextStyle(
          color: color ,
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }


}






