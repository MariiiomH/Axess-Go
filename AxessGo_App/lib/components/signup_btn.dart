import 'package:axess_go/routes/AlreadyExists.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SignUpBtn extends StatelessWidget {
  
  final String mobile ;
  const SignUpBtn({
    Key key,
    @required this.mobile,
  }) : super(key: key);


   void navigatePage(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) {
           return  AlreadyExists(mobile);}));
        
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: () {navigatePage(context);},
    child : Container(
      width: ViewportSize.width - ViewportSize.width * 0.15,
      margin: EdgeInsets.only(
        top: ViewportSize.height * 0.02,
        
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
       //Icon(CustomIcons.right_arrow),
         child: 
          Text(
          'Create account ',
          style: TextStyle(
            color: const Color (0xFF22252E)  ,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
          )
          ),
      ),
    ),
    );
  }
}
