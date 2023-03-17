import 'package:axess_go/models/CategCardModel.dart';
import 'package:flutter/material.dart';

class  CategCard extends StatelessWidget {
  const CategCard({
    Key key,
    this.categCard,
  }) : super(key: key);

  final CategCardModel categCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: categCard.navigate,
    child:  Container(

    height: 140,
    width: 130,

    margin: EdgeInsets.only(left: 20),
    //(
      //  horizontal: 60, //Constants.padding,
     //),

     // padding: const EdgeInsets.all(10),//(Constants.padding * 2),
     
      decoration: BoxDecoration(
         color: Colors.black,
         image: DecorationImage(
         image: AssetImage(categCard.image),
          fit: BoxFit.cover,
       ),
        borderRadius: BorderRadius.circular(14),
       
    ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              /*
              ClipOval(
                child: Image.asset(
                  bankCard.icon,
                  height: Constants.padding * 3,
                  width: Constants.padding * 3,
                ),
              ),
              */

              /*
              Text(
                bankCard.number,
                textAlign: TextAlign.center,   
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white),
              )
              */
            ],
          ),
          Container(

          width : 170,
          height: 40,
        
        decoration: BoxDecoration(
         color: Colors.black,
        borderRadius: BorderRadius.vertical(
          top : Radius.circular(0) , bottom: Radius.circular(15)
          //Constants.radius,
         ),
      ),
          child : Padding(padding: EdgeInsets.only(left: 3 , top: 5) ,
          child :Text(
            categCard.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.white
            )
           
          ))
          )],
     ) ),
    );
  }
}
