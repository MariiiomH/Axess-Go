import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class NextBtn  {

static Widget build(Function onTap , String txt) {
  return GestureDetector(
    onTap: onTap,
      child : Container(
      width: ViewportSize.width  * 0.25,
      margin: EdgeInsets.only(
        top: ViewportSize.height * 0.02,
      ),
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        width: ViewportSize.width * 0.25,
        height: ViewportSize.width * 0.13,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23),
          ),
          color: const Color(0xFF2f323d),
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
        child: Row(
          mainAxisAlignment : MainAxisAlignment.center,
        children : [
        
          Icon(Icons.arrow_forward_ios , color:const Color (0xFF22252E)  ,),
          
         // Padding(padding: EdgeInsets.only(left: 2)),

          Text(
          txt,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color (0xFF22252E)  ,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
          )),
         ] ),
    ),
    ));
  }
}
