import 'package:axess_go/routes/logging.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton(void Function() param0, {
    Key key,
  }) : super(key: key);

  void navigatePage(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) {
           return  Logging();}));
        
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: () {navigatePage(context);},
    child : Container(
      width: ViewportSize.width - ViewportSize.width * 0.15,
      margin: EdgeInsets.only(
        top: ViewportSize.height * 0.0001,
      ),
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        width: ViewportSize.width * 0.85,
        height: ViewportSize.width * 0.12,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: const Color(0xFFebf2f9),
          
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

          child:  Text(
          'Log in',
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
