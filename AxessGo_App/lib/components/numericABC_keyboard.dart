library numeric_keyboard;

import 'package:flutter/material.dart';

typedef KeyboardTapCallback = void Function(String text);

class NumericABCKeyboard extends StatefulWidget {
  /// Color of the text [default = Colors.black]
  final Color textColor;

  /// Display a custom right icon
  final Icon rightIcon;

  /// Action to trigger when right button is pressed
  final Function() rightButtonFn;

  /// Display a custom left icon
  final Icon leftIcon;

  /// Action to trigger when left button is pressed
  final Function() leftButtonFn;

  /// Callback when an item is pressed
  final KeyboardTapCallback onKeyboardTap;

  /// Main axis alignment [default = MainAxisAlignment.spaceEvenly]
  final MainAxisAlignment mainAxisAlignment;

  NumericABCKeyboard(
      {Key key,
      this.onKeyboardTap,
      this.textColor = Colors.blue,
      this.rightButtonFn,
      this.rightIcon,
      this.leftButtonFn,
      this.leftIcon,
      this.mainAxisAlignment = MainAxisAlignment.spaceEvenly})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NumericABCKeyboardState();
  }
}

class _NumericABCKeyboardState extends State<NumericABCKeyboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF454344),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              _calcButton('1' ,''),
              _calcButton('2','ABC'),
              _calcButton('3','DEF'),
            ],
          ),
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              _calcButton('4','GHI'),
              _calcButton('5','JKL'),
              _calcButton('6','MNO'),
            ],
          ),
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              _calcButton('7','PQRS'),
              _calcButton('8','TUV'),
              _calcButton('9','WXYZ'),
            ],
          ),
          ButtonBar(
            alignment: widget.mainAxisAlignment,
            children: <Widget>[
              InkWell(
                  borderRadius: BorderRadius.circular(45),
                  onTap: widget.leftButtonFn,
                  child: Container(
                     
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: widget.leftIcon)),
              _calcButton('0',''),
              InkWell(
                  borderRadius: BorderRadius.circular(45),
                  onTap: widget.rightButtonFn,
                  child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: widget.rightIcon))
            ],
          ),
        ],
      ),
    );
  }

  Widget _calcButton(String value, String alphabet) {
    return InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: () {
          widget.onKeyboardTap(value);
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0XFF999596),
          ),
       
          width: 125,
          height: 48,
          child: Column(
            
            children: [

          //  SizedBox(height: 8), 
            Text(
            value,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: widget.textColor),
          ),
            Text(
            alphabet,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: widget.textColor),
          ),
          ],)
        
        ));
  }
}
