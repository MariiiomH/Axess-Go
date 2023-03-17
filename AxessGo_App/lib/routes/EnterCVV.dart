import 'dart:ui';

import 'package:axess_go/components/Cards.dart';
import 'package:axess_go/components/numericABC_keyboard.dart';
import 'package:axess_go/components/productCard.dart';
import 'package:axess_go/models/rotation_animated.dart';
import 'package:axess_go/routes/ScanCrad.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';


class EnterCVV extends StatefulWidget {
  const EnterCVV ({Key key}) : super(key: key);

  @override
  _EnterCVV createState() => _EnterCVV();
}


class _EnterCVV  extends State with TickerProviderStateMixin {

String txt = '';
String astric ='';
int iconsCount = 3;
bool _enabled = false;
bool initValue = true ;

AnimationController animationController;

  void navigate(Function page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page()));
  }

//for "Add your CVV" Animation (ftom up to down)
  @override
  void initState() {
    super.initState();

    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 2),
    );
   
    animationController.stop();
  }

  startMoving(){
    
    animationController.forward();
  }


  Widget otpNumberWidget(int position) {
    try {
      return Container(
        
        height: 50,
        width: 50,
        decoration: BoxDecoration(
             color: const Color(0XFF454344),
            borderRadius: const BorderRadius.all(Radius.circular(10))
        ), 
        child: Center(child: new Padding(padding: EdgeInsets.only(bottom:15) ,
          child: Align(alignment: FractionalOffset.center,
          child : Text
          (astric[position] ,
          style: TextStyle(color: Colors.white , fontSize: 50),))),
      ));
    } catch (e) {
      return Container(

        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: const Color(0XFF454344),
            borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
   // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return MaterialApp(
    home: Scaffold(
    resizeToAvoidBottomInset : false,
    backgroundColor: const Color(0xFFE5E5E5), 
    body : Padding(
           padding: const EdgeInsets.only(top: 25.0),
      child : Stack(
     
    clipBehavior: Clip.none,    
    
  children: [

    Positioned(

  top: 0,
  bottom: 280,
  right: 0,
  left: 15,
  child:  Container(
     // color: Colors.amber,
      margin: EdgeInsets.only(top: height *0.05),
      child: Container(
       child : SingleChildScrollView(
         scrollDirection: Axis.vertical,
         clipBehavior: Clip.hardEdge,
         child: Row(
           children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [

                
                ProductCard().productIMGtxt('assets/images/coffee1.png'),
                ProductCard().productIMGtxt('assets/images/coffee2.png'),
                ProductCard().productIMGtxt('assets/images/coffee1.png'),


               
         
        ]),
         SizedBox(height: height*0.05,),

         Column(
         children: [

                ProductCard().productIMGtxt('assets/images/coffee1.png'),
                ProductCard().productIMGtxt('assets/images/coffee2.png'),
                ProductCard().productIMGtxt('assets/images/coffee1.png'),

         
        ]),

         ],)
         
         
       ) )
    
    ),
),



 Container(
      
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: height *0.12),

    //  height: height *0.22,
      decoration: BoxDecoration(
            
            borderRadius: BorderRadius.vertical(
          top : Radius.circular(30) , bottom: Radius.circular(0)
          //Constants.radius,
         ),
           //  color: const Color(0xFFe9eaee),
      ),
      child: btn('EGP 10', Alignment.center, ()=> print('') ,15), // BottomSheet('EGP 10', Alignment.center, ()=> print('') ,15), 
 ),
     

      ],)
      
      
    
     )));
     
  } 


 Widget btn ( String text , Alignment alignment , Function onTap , double w ) {
 // double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  ViewportSize.getSize(context);
  return GestureDetector(
    onTap: onTap,
      child: AnimatedContainer(
              duration: const Duration(seconds: 5), //AnimatedSize(
              curve: Curves.easeInOut,
              child :Container(

        alignment: alignment,
        margin:  EdgeInsets.only(top:initValue ? height *0 : height *0.15),
        decoration: BoxDecoration(
         
            borderRadius:BorderRadius.vertical(
             top : Radius.circular(30) , bottom: Radius.circular(0)),

            gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end:  Alignment.center,
                        colors: [
                           const Color(0xFF595259).withOpacity(0.7),
                           const Color(0xFF767272).withOpacity(1),
                            const Color(0xFF7a7474).withOpacity(0.9),

               ],                          
             ),
            
          
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: ViewportSize.width * 0.01,
              offset: Offset(2, 2),
            ),
          ],
          
        ),

          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          
            
        children: [


       SizedBox(height:10,),
      
       AnimatedBuilder(
        animation: animationController,
        child: Cards().visaCard(context ,'EGP 150',"4202   \u2022 \u2022 \u2022 \u2022  \u2022 \u2022 \u2022 \u2022   0930" ,'assets/images/Visa.png', ()=> navigate(()=>ScanCard()) ,"Marwan Mohamed" ),
        
       builder: (BuildContext context, Widget _widget) {
           return Transform.translate(offset: Offset(0, animationController.value * 100),
             transformHitTests: false,
             child: rotationCard(),
          );
        },
      ),
      

       AnimatedBuilder(
        animation: animationController,
        child: cvvContainer(),
     
       builder: (BuildContext context, Widget _widget) {
           return Transform.translate(offset: Offset(0 , animationController.value * 500),
             transformHitTests: false,
             child: cvvContainer(),
          );
        },
      )
     
        ],
       )  
      )),
     // vsync: this, duration: new Duration(seconds: 15),
     )
    
  );
  }
  

Widget cvvContainer(){
 return Container(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [

        Text(
          'Add your CVV ',
          softWrap: false,
          style: TextStyle(
            color: const Color (0xFFFFFFFF)  ,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
         )),
     
         Padding(padding: EdgeInsets.only(left: 115 , top: 5 , bottom: 9 ),
          child :Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(padding: const EdgeInsets.all(5), child:  otpNumberWidget(0), ),
              Padding(padding: const EdgeInsets.all(5), child:  otpNumberWidget(1), ),
              Padding(padding: const EdgeInsets.all(5), child:  otpNumberWidget(2), ),
          ],),
         ),

       NumericABCKeyboard(
            onKeyboardTap: _onKeyboardTap,
            textColor: Colors.white,
            rightButtonFn: () {
              setState(() {
                if (txt.length == 0)
                {
                  return;
                }
                else if (txt.length > iconsCount)
                {
                  txt = txt.substring(0, iconsCount);
                  astric = astric.substring(0, iconsCount);
                }
                txt = txt.substring(0, txt.length - 1);
                astric = astric.substring(0, astric.length -1);
              });
            },
            rightIcon: Icon(
              Icons.backspace,
              color: Colors.white,
            ),
            leftButtonFn: () {
              //navigatePage(()=>RotationScreen());
              setState(() {
                 _enabled = ! _enabled ;
                 initValue =! initValue;
                  startMoving();
              });
            },
            leftIcon: Icon(
              Icons.check,
              color: const Color(0xFF454344),
            ), 
          ),

          ],)  
      );

}

Widget rotationCard()
{ return RotationAnimatedWidget(
              values: [Rotation.deg( )  ,Rotation.deg(z: 90) , Rotation.deg(z: 90, x: -15) , Rotation.deg(z: 90, x: -20) , Rotation.deg(z: 90, x: -65) ,Rotation.deg(z: 90 , x: -75)],
              enabled: _enabled ,
          //    delay: const Duration(milliseconds:800),
              curve: Curves.linear,
              child:  Cards().visaCard(context ,'EGP 150',"4202   \u2022 \u2022 \u2022 \u2022  \u2022 \u2022 \u2022 \u2022   0930" ,'assets/images/Visa.png', ()=> navigate(()=>ScanCard()) ,"Marwan Mohamed" ),
        
                
              //  FlutterLogo(
                //  style: FlutterLogoStyle.markOnly,
                //),
   );
}

  _onKeyboardTap(String value) {
    setState(() {


            txt = txt + value;
            astric = '\u2022' * txt.length  ;
        
    });
  }

Widget bottomSheet ( String text , Alignment alignment , Function onTap , double w ) {
  return Center(
      child: new ClipRRect(
      child: new BackdropFilter(
      filter:  new ImageFilter.blur(sigmaX: 3.0 , sigmaY: 3.0),
      child:  new Container(
        clipBehavior: Clip.hardEdge,
        alignment: alignment,
        width: ViewportSize.width * w ,
        height: ViewportSize.height * 0.95,
        decoration: new BoxDecoration(
         
            borderRadius:BorderRadius.vertical(
             top : Radius.circular(30) , bottom: Radius.circular(0)),
             color:  const Color(0xFFeadbde).withOpacity(0.2),

        ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
        children: [


        SizedBox(height:10,),

          
        Padding(padding: EdgeInsets.only(left : 130, bottom: 25),
        child: Cards().buildImage(path: 'assets/images/checkmark.png',w: 150 , h: 100),
       ),
        
        Text(
          'Paid '+'549.50',
          softWrap: false,
          style: TextStyle(
            color: Colors.black, //const Color (0xFF554649)  ,
            fontFamily: 'OpenSans',
            fontSize: 22,
            fontWeight: FontWeight.bold,
      
         )),

          SizedBox(height:5),

          Text(
          'Review your Purchase ',
          softWrap: false,
          style: TextStyle(
            color: Colors.black, //const Color (0xFF554649)  ,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.normal,
      
         )),


          ],)
       
       ) 
      ))
     
  );
  }


}




