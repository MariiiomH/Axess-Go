import 'package:axess_go/components/RepeatCard.dart';
import 'package:axess_go/components/gradient_text.dart';
import 'package:axess_go/components/productCard.dart';
import 'package:axess_go/models/CartCard.dart';
import 'package:axess_go/models/CartModel.dart';
import 'package:axess_go/models/Cart_list.dart';
import 'package:axess_go/routes/Checkout.dart';
import 'package:axess_go/routes/Vending.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';


class Cart extends StatefulWidget {
  //const Cart  ({Key key, CartModel cartList}) : super(key: key);


@override
  State<StatefulWidget> createState() {
    return _Cart();
  }

}


class _Cart  extends State<Cart> {

ScrollController _controller;

List <int> counter ; //= List.filled(Size, 1 , growable: true);
List <int> sum ;
//List <int> items = List.filled(3, 1 , growable: true);

List<CartModel> items = CartList.getItems();

var size ; 
int total =0;
int countItems = 0;

  void navigate(Function page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page()));
  }



 @override
 void initState() {
    
    super.initState();
    size = items.length;
    counter = List.filled(size, 1 , growable: true);
    countItems = counter.reduce((value, element) => value+ element);
    sum = items.map((e) => e.price).toList();
    total = sum.reduce((value, element) => value+ element);

   _controller = ScrollController();
   _controller.addListener(_scrollListener);

 }

_scrollListener(){
  if(_controller.offset >=  _controller.position.maxScrollExtent && !_controller.position.outOfRange)
  {
    setState(() {
      
    });
  }
  if(_controller.offset <=  _controller.position.minScrollExtent && !_controller.position.outOfRange)
  {
    setState(() {
      
    });
  }
}

//List <int> counter = List.filled(4, 1 , growable: true);

  void decrement(int index){
    setState(() {
      
      if  (counter[index] >1)
      {
       counter[index] -= 1;
        sum[index] = counter[index] * items[index].price;
        countItems -= 1;
        totalSum();
      }
       else 
        counter[index] =1 ;
        sum[index] = counter[index] * items[index].price;
    });
  }
   void increment(int index)  {
    setState(() {
       counter[index] += 1;
        sum[index] = counter[index] * items[index].price;
        countItems += 1;
        totalSum();
       print(sum[index] );
       print(total);
    });
  }

  void totalSum()  {
    setState(() {
       //Sum = counter[index] * price;
       total =   sum.reduce((value, element) => value+ element);
       print('');
    });
  }

   void totalSubtract()  {
    setState(() {
       
       total =  0;
       countItems=0;
       print('');
    });
  }


Widget _buildList()
{
  return Container(
        // margin: EdgeInsets.only(top: ViewportSize.height *0.35 , left : ViewportSize.width*0.03 ),
        child: items.length > 0
         ? ListView.builder(
            //  shrinkWrap: true,
            //  controller:  _controller,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  onDismissed: (DismissDirection direction) {
                    setState(() {

                       if  (index == items.length-1)
                       { print(index);
                         print(countItems);
                         total =0;
                         countItems=0;
                         items.clear();
                       }
                       else 
                      { 
                      items.removeAt(index);
                      counter.removeAt(index);
                      sum.removeAt(index);
                      countItems = counter.reduce((value, element) => value+ element);
                      total = sum.reduce((value, element) => value+ element);
                   
                      }
                      setState(() {
    
                      });
                     
                    });
                  },
                
                  secondaryBackground: Container(
                    color: Colors.red,
                    child:Padding(padding: EdgeInsets.only(left: ViewportSize.width *0.7),
                    child:  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                  
                     children: [
                  
                    
                         Icon(Icons.delete_rounded , color: Colors.white, size: 35,),
                        
                        //Center(
                          //  child: 
                            Text(
                              'Delete',
                              style: TextStyle(color: Colors.white , fontSize: 18),
                            ),
                       // ),
                    ],))),
                  
                  background: Container(),
                  child: CartCard(cartList: items[index], add:()=>increment(index),subtract: ()=>decrement(index) , quantity: counter[index], ),
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                );
              },
              
            )
           : Center(child: GradientText(
                              'Empty Cart   ',
                              style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                
                                const Color(0xFFFCFBFE),
                                const Color(0xFFC6B6F0),
                              ]),
                            ),),

        
        /* SingleChildScrollView(child:
         Column(children: [

CartCard(cartList: items[0], Add:()=>increment(0), Quantity: counter[0], ),
CartCard(cartList: items[1], Add:()=>increment(1), Quantity: counter[1], ),
CartCard(cartList: items[1], Add:()=>increment(2), Quantity: counter[2], ),
        ],))
        */
  //)
  );
  
}

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
   // CartItemList(Add: ()=> increment(1), counter: counter);//.getItems();
   // CartItemList(Add: ()=> increment(2),counter: counter);//.getItems();
   // CartItemList(Add: ()=> increment(3),counter: counter);//.getItems();
   // List copy = []..addAll(ok());
    /*
     getItems = [
       CartModel(
            card : productCard().CartProduct('Caramel Spiced Latte','Latte','assets/images/coffee1.png' ,()=> increment(0),  counter[0].toString(),'30'),//,()=>increment(0), ()=>decrement(0), counter[0].toString(),'30'),
        ),
        CartModel(
          card: productCard().CartProduct( 'Pumpkin Spiced Latte','Latte','assets/images/coffee2.png' ,()=>increment(1), counter[1].toString(),'20'), // ,()=>increment(1),()=>decrement(1), counter[1].toString(),'20'), 
        ),
        CartModel(
          card: productCard().CartProduct( 'Caramel Spiced Latte ','Latte','assets/images/coffee0.png' ,()=>increment(2), counter[2].toString(),'10'), //,()=>increment(2), ()=>decrement(2), counter[2].toString(),'25'),
           
        ),
];
*/     

  

    return Scaffold(
    backgroundColor: const Color(0xFFE5E5E5), 
    body : Padding(
           padding: const EdgeInsets.only(top: 25.0),
      child : Stack(
     
    clipBehavior: Clip.none,
    
  children: [

    Container(
      color: const Color(0xFF21222D),
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: height *0.20),
     
      ),

    Container(
      
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: height *0.10),
      height: height *0.15,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
             color: const Color(0xFFe9eaee),
      ),
    ),
 Container(
      margin: EdgeInsets.only(top: height *0.30 , left : width*0.07),
      child:
      Text(
          'Cart  ',
          softWrap: true,
          style: TextStyle(
            color: const Color (0xFFFFFFFF)  ,
            fontFamily: 'OpenSans',
            fontSize: 27,
            fontWeight: FontWeight.bold,
      
         )),
    ),

Positioned(

  top: height *0.34,
  bottom: 150,
  right: 0,
  left: width*0.04,
  child:_buildList() 
),
  
  //Container(
   //  color: Colors.amber,
         
     //margin: EdgeInsets.only(top: height *0.35 , left : width*0.03),
     // child:Container(
         
       // child: _buildList(),
       //color: Colors.amber,
      /*
      child: items.length>0
          ?ListView.builder(
              shrinkWrap: true,
              controller:  _controller,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  onDismissed: (DismissDirection direction) {
                    setState(() {
                     
                      items.removeAt(index);
                       setState(() {
    
                      });
                     
                    });
                  },
                  secondaryBackground: Container(
                    child: Center(
                      child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.red,
                    
                  ),
                  background: Container(),
                  child: Cart(cartList: items[index]),
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                );
              },
            )
           :Center(child: Text('No Items')),
      ))*/
     
      //),
      //),
//),
  
      
      
      
      
          
      
      
      
      
      /*
       Container(
        color: Colors.blue,
       child : SingleChildScrollView(
         scrollDirection: Axis.vertical,
         clipBehavior: Clip.hardEdge,
         child: Column(
         children: [
            

             productCard().CartProduct(context, 'Caramel Spiced Latte','Latte','assets/images/coffee1.png' ,()=>increment(0), ()=>decrement(0), counter[0].toString(),'30'),
             productCard().CartProduct(context, 'Pumpkin Spiced Latte','Latte','assets/images/coffee2.png' ,()=>increment(1),()=>decrement(1), counter[1].toString(),'20'),
             productCard().CartProduct(context, 'Caramel Spiced Latte ','Latte','assets/images/coffee0.png' ,()=>increment(2), ()=>decrement(2), counter[2].toString(),'25'),
             productCard().CartProduct(context, 'Caramel Spiced Latte','Latte','assets/images/coffee1.png' ,()=>increment(3), ()=>decrement(3), counter[3].toString(),'10'),

        ]),
       ) )
  )
   */
   // ),

     /*
      Container(
      color: const Color(0xFF21222D),
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: height *0.25),
     
     // child: Stack(
       // clipBehavior: Clip.none,
       // children: [
    ),
    */
 
Positioned(

  top: 0,
  bottom: 500,
  right: 0,
  left: 0,
 // width: double.maxFinite,
  //left: 20,
  child: Container(
   // color: Colors.red,
       child : SingleChildScrollView(
         reverse: true,
         scrollDirection: Axis.horizontal,
         clipBehavior: Clip.none,
         child: Row(
         children: [
          //  btn('Recent', Alignment.center, ()=> navigatePage(()=>Vending()), 5),
          //  btn('Recent', Alignment.center, ()=> navigatePage(()=>Vending()), 5),
             ProductCard().productIMG('assets/images/coffee1.png'),
             ProductCard().productIMG('assets/images/coffee2.png'),
             ProductCard().productIMG('assets/images/coffee1.png'),
        ]),
       ) )
  
  
  // btn('Recent', Alignment.center, ()=> navigatePage(()=>Vending()), 5),

),

 Container(
      
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: height *0.73 , left: width * 0.05 , right: width * 0.05),
      height: height *0.22,
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
             color: const Color(0xFFe9eaee),
      ),
      child: btn(total.toString(),countItems.toString(),Alignment.center, ()=> navigate(()=> CheckOut()) ,15),
     // 
 ),
 

/*
     Container(
   
     color: Colors.black,
     margin: EdgeInsets.only(left: 20,top: 85),
     child: 
     
     SingleChildScrollView(
       clipBehavior: Clip.none,
      child: Row(
        children: [

           productCard().product('assets/images/coffee1.png', 'Latte'),
           productCard().product('assets/images/coffee1.png', 'Latte'),
           productCard().product('assets/images/coffee1.png', 'Latte'),

           /*
          Cards_().NearbyIMG_Card(context,"Mobile", 'assets/images/mobilepetrol.png',()=> print('') , "" , 0.1),
   
          Cards_().NearbyIMG_Card(context,"Chill Out", 'assets/images/petrol2.png',()=> print('') , "" , 0.1),
                          
          Cards_().NearbyIMG_Card(context,"Store", 'assets/images/store_.png',()=> print('') , "" , 0.1),
    
          Cards_().NearbyIMG_Card(context,"Vending Machine", 'assets/images/vend_machine.png',()=> print('') , "" , 0.1),
           */
        ],)
      
      ),
      ),
*/
    

      ],)
     
      
    
     ));
     
   //  );
     
  } 

 Widget btn ( String text , String count , Alignment alignment , Function onTap , double w ) {
  return GestureDetector(
  //  onTap: onTap,
      child:Container(
        alignment: alignment,
      //  width: ViewportSize.width * w ,
      //  height: ViewportSize.width * 0.12,
        decoration: BoxDecoration(
         
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end:  Alignment.bottomRight,
                                            colors: [
                                              const Color(0xFF5c596c),
                                           //   const Color(0xffcbcad0),
                                            //  const Color(0xFFcdccd2),
                                              const Color(0xFFB5B4BC),
                                              const Color(0xFFFFFFFF),
                                              
                                             
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

          child: Column(
            
            
        children: [

         Padding(padding: EdgeInsets.only(bottom :30 , left: 35, top: 20),
          child : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

         Column(
           children: [

            Text(
          'Total Amount  ',
          softWrap: false,
          style: TextStyle(
            color: const Color (0xFF21222D)  ,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
         )),
         SizedBox( height: 3,),
          Text(
           count+' item(s)',
          softWrap: false,
          style: TextStyle(
            color: const Color (0xFF21222D)  ,
            fontFamily: 'OpenSans',
            fontSize: 14,
            fontWeight: FontWeight.bold,
      
         )),
         ],),

         
        SizedBox(width: 100,),

        Text(
          text,
          softWrap: false,
          style: TextStyle(
            color: const Color (0xFF21222D)  ,
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold,
      
          )),
        

          ],) 
       ),

        Padding(padding: EdgeInsets.only(left: 35),
          child : Row(
         
         children: [

        RepeatCard().buildBtn('Cancel', const Color(0xFFFFFFFF), const Color (0xFF22252E),()=> navigate(()=> Vending()), 0.30 , 20),
        SizedBox(width: 45,),
        RepeatCard().buildBtn('Checkout', const Color(0xFF21222D),const Color (0xFFFFFFFF) , onTap , 0.30 , 20),

       ],)),

        

          ],)
 
    ));
  }

/*
 ok() {
 
   return CartModel().cart = [
        CartModel(
            card : productCard().CartProduct('Caramel Spiced Latte','Latte','assets/images/coffee1.png' ,()=> increment(0) , counter[0].toString(),'30'),//,()=>increment(0), ()=>decrement(0), counter[0].toString(),'30'),
        ),
        CartModel(
          card: productCard().CartProduct( 'Pumpkin Spiced Latte','Latte','assets/images/coffee2.png' ,()=> increment(1), counter[1].toString(),'20'), // ,()=>increment(1),()=>decrement(1), counter[1].toString(),'20'), 
        ),
        CartModel(
          card: productCard().CartProduct( 'Caramel Spiced Latte ','Latte','assets/images/coffee0.png' ,()=> increment(2), counter[2].toString(),'10'), //,()=>increment(2), ()=>decrement(2), counter[2].toString(),'25'),
           
        ),
  ];
  
}
 */   


}




