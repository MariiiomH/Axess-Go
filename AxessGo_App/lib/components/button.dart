import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Button  {

static Widget build( String text , Alignment alignment , Function onTap , double w ) {
  return GestureDetector(
    onTap: onTap,
      child : Container(
      width: ViewportSize.width  * w,
      margin: EdgeInsets.only(
        top: ViewportSize.height * 0.02,
      ),
      alignment: Alignment.center,
      child: Container(
        alignment: alignment,
        width: ViewportSize.width * w ,
        height: ViewportSize.width * 0.12,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: const Color(0xFFFFFFFF),
       
        ),
       
       
         child:  Text(
          text,
          style: TextStyle(
            color: const Color (0xFF22252E)  ,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
          )),
      ),
    ),
    );
  }
}
