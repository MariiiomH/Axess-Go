import 'package:axess_go/components/Cards.dart';
import 'package:axess_go/models/rotation_animated.dart';
import 'package:axess_go/routes/ScanCrad.dart';
import 'package:flutter/material.dart';

class RotationScreen extends StatefulWidget {
  @override
  _RotationScreenState createState() => _RotationScreenState();
}

class _RotationScreenState extends State<RotationScreen> {
  bool _enabled = false;


  void navigate(Function page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => page()));

    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            RotationAnimatedWidget(
              //values: [Rotation.deg( )  ,Rotation.deg(z: 90) , Rotation.deg(z: 90, x: 15) , Rotation.deg(z: 90, x: 20) , Rotation.deg(z: 90, x: 65) ,Rotation.deg(z: 90, x: 70),Rotation.deg(z: 90 , x: 75)],
              values: [Rotation.deg( )  ,Rotation.deg(z: 90) , Rotation.deg(z: 90, x: -15) , Rotation.deg(z: 90, x: -20) , Rotation.deg(z: 90, x: -65) ,Rotation.deg(z: 90, x: -70),Rotation.deg(z: 90 , x: -75)],
              enabled: _enabled,
          //    delay: const Duration(milliseconds:800),
              curve: Curves.linear,
              child: Container(
               // height: 200,
               // width: 200,
                child: Cards().visaCard(context ,'EGP 150',"4202   \u2022 \u2022 \u2022 \u2022  \u2022 \u2022 \u2022 \u2022   0930" ,'assets/images/Visa.png', ()=> navigate(()=>ScanCard()) ,"Marwan Mohamed" ),

                )
              
             
                
              
              ),
            
            RaisedButton(
              color: Colors.blue,
              child: Text(
                "rotate",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  _enabled = !_enabled;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
