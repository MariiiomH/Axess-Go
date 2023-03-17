import 'dart:ui';
import 'package:axess_go/components/Cards.dart';
import 'package:axess_go/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

 // ignore: must_be_immutable
 class ProfileSection extends StatefulWidget {



    @override
  _State createState() => _State();

    ProfileSection({

    Key key,
    this.verticalPos,

  }) : super(key: key);

  final double verticalPos;
  bool pressed = true ; 
  bool pressed_5d = false ; 
  bool pressed_1m = false ; 
  bool pressed_1y = false ; 

 }

class _State extends State<ProfileSection> {
  



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            
           // margin: const EdgeInsets.only(top: Constants.padding),
           padding:
                const EdgeInsets.symmetric(horizontal: Constants.padding * 1.7),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Constants.radius),
            ),
            child: Stack(
              children: [
                Center(child: buildHeader(context)),
                Opacity(
                  opacity: lerpDouble(0.0, 1.0, widget.verticalPos/MediaQuery.of(context).size.height),
                  // duration: const Duration(milliseconds: 300),
                  child: widget.verticalPos > 250
                      ? Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                const SizedBox(
                                  height: 650,
                                ),
                           
                             dataVisualLabelStack(),
                            

               

                      
                        
                       
                                const SizedBox(
                                  height: Constants.padding * 1,
                                ),
                                Container(
                                  height: 120,
                                  width: 350,
                                  padding:
                                     const EdgeInsets.only(left: 20 , top: 5),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(25),
                                           gradient: LinearGradient(
                                            begin: Alignment.bottomRight,
                                            end:  Alignment.topLeft,
                                            colors: [
                                              const Color(0xFFbcd0f4),
                                              const Color(0xffbfcbdd),
                                              const Color(0xFFededed),
                                            ],
                                          
                                          ),
                                    //color: Colors.white,
                                  ),
                                  child: Column(
                                    children: const [
                                      ListTile(
                                        leading: Icon(
                                          Icons.credit_card,
                                          color: Colors.black87,
                                          size: 30,
                                        ),
                                        title: Text(
                                          "Pay For Service",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      ListTile(
                                      
                                        leading:
                                         Icon(
                                          Icons.credit_score_rounded,
                                          color: Colors.black87,
                                          size: 30,
                                        ),
                                        title: Text(
                                          "Transaction",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                       // trailing: Chip(label: Text("4%")),
                                      ),
                                      
                                    ],
                                  ),
                                ),
                              
                              
                              ],
                            ),
                          ),
                        )
                      : null,
                )
              ],
            ),
          ),
        ),

         Container(
          height: 5,
          width: 50,
          margin: const EdgeInsets.symmetric(
            vertical: Constants.padding,
          ),
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade800,
            borderRadius: BorderRadius.circular(Constants.radius),
        
          ),
        )

      ],
    );
  }


  Widget buildUserAvatar(String image, String name) => Column(
        children: [
          CircleAvatar(
            radius: 30,
            foregroundImage: AssetImage(
              image,
            ),
          ),
          const SizedBox(
            height: Constants.padding,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )
        ],
      );

  Row buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: "Hello",
            style: Theme.of(context).textTheme.headline5,
            children: const [
              TextSpan(
                text: " M",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: 75,
          height: 50,
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  foregroundImage: AssetImage(
                    'assets/images/user3.png',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(Icons.notifications),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

 Widget dataVisual ()
 { return Container(
    height: 280,

    padding:
      const EdgeInsets.only(left: 15, top :5),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(Constants.radius),
                                           gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end:  Alignment.topRight,
                                            colors: [
                                              const Color(0xFFbcd0f4),
                                              const Color(0xffbfcbdd),
                                              const Color(0xFF454d5a),
                                            ],
                                          
                                          ),

                                  ),
                                  child: Column(
                                    
                                  children: [

                                  Row(
                                     
                                     children: [
                                    
                                   Container(

                                         padding: EdgeInsets.only(left: 10 , top: 7 , bottom: 7 , right: 10),
                                      //   margin: EdgeInsets.only(left: 5),
                                         decoration: BoxDecoration(
                                           color: const Color (0XFFCad9f4),
                                          borderRadius:BorderRadius.circular(35),
                                         ),
                                         
                                          child : Text('statistics' ,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                          color: Colors.black ,
                                          fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          )),
                               ),
                                  
                                 TextButton(
                                   child: Text('1d',
                                   style: widget.pressed? TextStyle(color: Colors.black):
                                   TextStyle(color: Colors.white),),
                                   onPressed: (){
                                     setState(() {
                                       widget.pressed = true;
                                       widget.pressed_5d = false;
                                       widget.pressed_1m = false;
                                       widget.pressed_1y = false;
                                     });
                                   }
                                   ),

                                  TextButton(
                                   child: Text('5d',
                                   style: widget.pressed_5d ? TextStyle(color: Colors.black):
                                   TextStyle(color: Colors.white),),
                                   onPressed: (){
                                     setState(() {
                                       widget.pressed = false;
                                       widget.pressed_5d = true ;
                                       widget.pressed_1m = false;
                                       widget.pressed_1y = false;
                                       
                                     });
                                   }
                                   ),

                                  TextButton(
                                   child: Text('1m',
                                   style: widget.pressed_1m ? TextStyle(color: Colors.black):
                                   TextStyle(color: Colors.white),),
                                   onPressed: (){
                                     setState(() {
                                       widget.pressed = false;
                                       widget.pressed_5d = false ;
                                       widget.pressed_1m = true;
                                       widget.pressed_1y = false;
                                       
                                     });
                                   }
                                   ),
                               
                                 TextButton(
                                   child: Text('1y',
                                   style: widget.pressed_1y ? TextStyle(color: Colors.black):
                                   TextStyle(color: Colors.white),),
                                   onPressed: (){
                                     setState(() {
                                       widget.pressed = false;
                                       widget.pressed_5d = false ;
                                       widget.pressed_1m = false;
                                       widget.pressed_1y = true;
                                       
                                     });
                                   }
                                   ),
                                      
                                   ]),
                                   // DataVisual_label (),
                                  ]));
 }


 Widget dataVisualLabel ()
 { return Container(
    
    height: 155,
     margin:const EdgeInsets.only(top: 230),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.circular(25),

                                          ),
                                 child: Column(
                                   children: [
                                    
                                    Row(
                                    
                                    children: [
                                    
                                     Padding(padding: EdgeInsets.only(left: 40 , top: 15), child: counters('assets/images/storeCart.png',50)),
                                     
                                     SizedBox(width: 10,),
                                     
                                      Padding(padding: EdgeInsets.only( top: 15) ,child : counters('assets/images/pump.png',70)),
                                    ],),
                                     
                                    Padding(padding: EdgeInsets.only(left: 40 , top: 10 ), child: counters('assets/images/wallet_Icon.png',60)),
                                     
                                  
                                   ],
                                 ),
                                );
        
 }

Row counters(String path , double counter)
{
  return Row(
       children : [
                Cards().buildImage(path: path , w: 60 , h: 60 ),
                Text('    '),
                Text("\$${counter.toStringAsFixed(2)}" , style: TextStyle(
                color: Colors.white ,
                fontSize: 20,
                fontWeight: FontWeight.w400 ,
             )),
      ]);
                                    
}


 Stack dataVisualLabelStack ()
 {
   return Stack(children: [
      dataVisual(),
      dataVisualLabel(),
   ],);
 }                         
}