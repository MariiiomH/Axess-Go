import 'package:axess_go/routes/login.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';

class InputField {



//ignore: missing_return
static Widget build() {
     print('');
  }

static Widget buildClearBtn(Function onTap, String logo ) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(

          child : Image.asset(logo , width: 0.5 , height: 0.5),
            
          ),
        );
  }

  static Widget cardImg(String logo ) {
    return GestureDetector(
      child: Container(

          child : Image.asset(logo , width: 0.5 , height: 0.5),
            
          ),
        );
  }

  static Widget buildName(TextEditingController myText , FocusNode focus  ) {
    return Container(
      height: ViewportSize.height *0.08,
      width: ViewportSize.width * 0.85,
      alignment: Alignment.center,
      child: Theme(
        data: ThemeData(
           textTheme: TextTheme(subtitle1 :TextStyle(color: Colors.white)), 
        ),
        child: TextField(
          focusNode: focus,
          controller: myText,
          decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ViewportSize.width * 0.025),
            ),
            suffixIcon:focus.hasFocus?
              buildClearBtn(   
                     () => myText.clear,
                      'assets/images/_clear_.png',
              ):
              build(),

            hintText: 'Name',
            hintStyle: TextStyle(
              color: const Color(0xFF555a6b),
            ),
            fillColor: const Color(0xFF2f323d),
            filled: true,
          ),
        ),
      ),
    );
  }

  static Widget buildEmail(TextEditingController myText , FocusNode focus)  {
    return Container(
      height: ViewportSize.height *0.08,
      width: ViewportSize.width * 0.85,
      alignment: Alignment.center,
      child: Theme(
        data: ThemeData(
           textTheme: TextTheme(subtitle1 :TextStyle(color: Colors.white)), 
        ),
        child: TextField(
          focusNode: focus,
          controller: myText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ViewportSize.width * 0.025),
            ),
            suffixIcon: focus.hasFocus?
               buildClearBtn(   
                     () => myText.clear,
                      'assets/images/_clear_.png',
              ):
            build(),
            hintText: 'Email or Mobile',
            hintStyle: TextStyle(
              color: const Color(0xFF555a6b),
            ),
            fillColor: const Color(0xFF2f323d),
            filled: true,
          ),
        ),
      ),
    );
  }

  static Widget buildMobile(TextEditingController myText , FocusNode focus) {
    return Container(
      height: ViewportSize.height *0.08,
      width: ViewportSize.width * 0.85,
      alignment: Alignment.center,
      child: Theme(
        data: ThemeData(
           textTheme: TextTheme(subtitle1 :TextStyle(color: Colors.white)), 
        ),
        child: TextField(
          focusNode: focus,
          controller: myText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ViewportSize.width * 0.025),
            ),
            suffixIcon: focus.hasFocus?
               buildClearBtn(   
                     () => emailController.clear,
                      'assets/images/_clear_.png',
              ):
              build(),
            hintText: 'Mobile',
            hintStyle: TextStyle(
              color: const Color(0xFF555a6b),
            ),
            fillColor: const Color(0xFF2f323d),
            filled: true,
          ),
        ),
      ),
    );
  }

  //@override
  static Widget buildPassword(TextEditingController myText , FocusNode focus) {
    return Container(
      height: ViewportSize.height *0.08,
      width: ViewportSize.width * 0.85,
      alignment: Alignment.center,
      child: Theme(
        data: ThemeData(
           textTheme: TextTheme(subtitle1 :TextStyle(color: Colors.white)), 
        ),
        child: TextField(
          controller: myText,
          focusNode: focus,
          obscureText: true, //(hide passwords)
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ViewportSize.width * 0.025),
            ),
            suffixIcon: focus.hasFocus?
              buildClearBtn(   
                     () => myText.clear,
                      'assets/images/_clear_.png',
            ):
            build(),

            hintText: 'Password',
            hintStyle: TextStyle(
              color: const Color(0xFF555a6b),
            ),
            fillColor: const Color(0xFF2f323d),
            filled: true,
          ),
        ),
      ),
    );
  }

  static Widget buildBusinessName(TextEditingController myText , FocusNode focus) {
    return Container(
      height: ViewportSize.height *0.15,
      width: ViewportSize.width * 0.90,
      alignment: Alignment.center,
      child: Theme(
        data: ThemeData(
           textTheme: TextTheme(subtitle1 :TextStyle(color: Colors.white)), 
        ),
        child: TextField(
          focusNode: focus,
          controller: myText,
          decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ViewportSize.width * 0.025),
            ),
            suffixIcon: focus.hasFocus?
              buildClearBtn(   
                     () => myText.clear,
                      'assets/images/_clear_.png',
              ):
              build(),
            
            fillColor: const Color(0xFF2f323d),
            filled: true,
          ),
        ),
      ),
    );
  }

   static Widget buildLine(TextEditingController myText ,FocusNode focus , double fontSize , double w , TextAlign textAlign , TextInputType keyboard ) {

    return Container(
      height: ViewportSize.height *0.08,
      width: ViewportSize.width * w,
      alignment: Alignment.center,
      child: Theme(
        data: ThemeData(
        
          textTheme: TextTheme(subtitle1:TextStyle(color: Colors.white , fontSize: fontSize)), 
       
        ),
        child: TextField(
          focusNode: focus,
          controller: myText,
          textAlign: textAlign,
          keyboardType: keyboard,         
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: 
                   BorderSide(color:  Color(0xFF87797d))),
        //   focusedBorder: //UnderlineInputBorder(
           //   borderSide: BorderSide(color: Colors.red), ),
           
            suffixIcon: focus.hasFocus?
            
              buildClearBtn(   
                     () => myText.clear,
                      'assets/images/_clear_.png',
              ):
              build(),

          ),
        ),
      ),
    );
  }
   static Widget buildCreditNumber(TextEditingController myText ,FocusNode focus , double fontSize , double w , TextAlign textAlign , TextInputType keyboard ) {

    return Container(
      height: ViewportSize.height *0.08,
      width: ViewportSize.width * w,
      alignment: Alignment.center,
      child: Theme(
        data: ThemeData(
        
          textTheme: TextTheme(subtitle1:TextStyle(color: Colors.white , fontSize: fontSize)), 
       
        ),
        child: TextField(
          focusNode: focus,
          controller: myText,
          textAlign: textAlign,
          keyboardType: keyboard,         
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: 
                   BorderSide(color:  Color(0xFF87797d))),
        //   focusedBorder: //UnderlineInputBorder(
           //   borderSide: BorderSide(color: Colors.red), ),
            prefixIcon : cardImg('assets/images/MasterCard.png'),

            suffixIcon: focus.hasFocus?
            
              buildClearBtn(   
                     () => myText.clear,
                      'assets/images/_clear_.png',
              ):
              build(),
      
           

          ),
        ),
      ),
    );
  }
}

