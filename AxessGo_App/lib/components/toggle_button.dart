import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  final String startText;
  final String endText;
  final ValueChanged tapCallback;

  const ToggleButton({
    Key key,
    this.startText,
    this.endText,
    this.tapCallback,
  }) : super(key: key);

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _activeIndex = _activeIndex == 0 ? 1 : 0;
            });
            widget.tapCallback(_activeIndex);
          },
          child: Container(
            width: width * 0.999,
            height: height * 0.06,
            decoration: BoxDecoration( 
              border: Border(
                bottom: BorderSide(color: Color(0xFF87797d) ,  width: 2) ,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                 buildText(
                          text: widget.startText,
                          color: _activeIndex == 0 ? const Color(0xFFFFFFFF) : const Color(0xFF45445D) ,
                  
                        ),
                buildText(
                            text: widget.endText,
                            color: _activeIndex == 1 ? const Color(0xFFFFFFFF) : const Color(0xFF45445d) ,
                          ),
                      
              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCirc,
          width: width * 0.999,
          alignment:
              _activeIndex == 0 ? Alignment.centerLeft : Alignment.centerRight,
           child: Container(
            alignment: Alignment.center,
            width: width * 0.50,
            height: height * 0.06,
            decoration: BoxDecoration( 
              border: Border(
                bottom: BorderSide(color: Colors.white , width: 2) ,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Text buildText({String text, Color color = const Color(0xFF45445d)}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: ViewportSize.width * 0.04,
        color: color,
        fontWeight: FontWeight.bold,
        fontFamily: 'Varela',
      ),
    );
  }
}
