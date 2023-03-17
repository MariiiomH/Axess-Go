import 'package:flutter/material.dart';

class OTP {

final String astric ;

  const OTP({
    @required this.astric,
  });


 Widget otpNumberWidget(int position) {
    try {
      return Container(
        
        height: 70,
        width: 70,
        decoration: BoxDecoration(
           // color: Colors.redAccent,
            border: Border.all(color: Colors.cyan, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(35))
        ), 
        child: Center(child: new Padding(padding: EdgeInsets.only(top: 7) ,
          child: Align(alignment: FractionalOffset.center,
          child : Text(astric[position] , 
          style: TextStyle(color: Colors.black , fontSize: 25),))),
      ));
    } catch (e) {
      return Container(

        height: 70,
        width: 70,
        decoration: BoxDecoration(
        //  color: Colors.redAccent,
            border: Border.all(color: const Color(0xFF555a6b), width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(35))
        ),
      );
    }
  }
}