import 'package:flutter/material.dart';
import 'package:axess_go/utils/viewport_size.dart';

class DividerLine {

static Widget buildDivider() {
    return ( Container( 
         child: Container(
            height: ViewportSize.height * 0.0001 ,
            width: ViewportSize.width * 0.390,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.white , width: 1),
               ),
            ),
          ),
    )); 
  }
}