import 'package:axess_go/components/CardsDesign.dart';
import 'package:axess_go/models/CategCardModel.dart';
import 'package:axess_go/components/CategCard.dart';
import 'package:axess_go/routes/Nearby.dart';
import 'package:axess_go/routes/Petrol.dart';
import 'package:axess_go/routes/ProfileSection.dart';
import 'package:axess_go/routes/Vending.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void navigate(Function page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page()));
  }



  final PageController _pg = PageController(
    viewportFraction: .8,
    initialPage: 1,
  );


  double page = 1;
  double pageClamp = 1;

  Size size;

  double verPos = 0.0;

  Duration defaultDuration = const Duration(milliseconds: 300);


  void pageListener() {
    setState(() {
      page = _pg.page;
      pageClamp = page.clamp(0, 1) as double;
    });
  }

  void onVerticalDrad(DragUpdateDetails details) {
    setState(() {
      verPos += details.primaryDelta;
      verPos = verPos.clamp(0, double.infinity) as double;
    

    });
  }

  void onVerticalDradEnds(DragEndDetails details) {
    setState(() {
      if(details.primaryVelocity > 500 || verPos > size.height / 2){
        verPos = size.height - 40;
      }
      if(details.primaryVelocity < -500 || verPos < size.height / 2){
        verPos = 0;
      }
    });
  }

  @override
  void initState() {
//    _pg.addListener(pageListener);
    super.initState();
  }

  @override
  void dispose() {
    _pg.removeListener(pageListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFF4f4fe),
      body: Stack(
        clipBehavior: Clip.none,
        
        children: [

          /*
          // Add card background
          Positioned(
            top: pageClamp * size.height * .275 + verPos,
            bottom: pageClamp * size.height * .225 -verPos,
            left: pageClamp * size.width * .1,
            right: pageClamp * size.width * .2,
            child: Transform.translate(
              offset: Offset(
                page < 1 ? 0 : (-1 * page * size.width + size.width),
                0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(
                    pageClamp * Constants.radius,
                  ),
                ),
              ),
            ),
          ),
        */
        /*
          // Add card
          AnimatedSwitcher(
            duration: defaultDuration,
            child: page < 0.3
                ? const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10, //Constants.padding * 2,
                    ),
                    child: AddCard(),
                  )
                : null,
          ),
          */
          // Balance list
          Positioned(
            top: page == 0 ? 0 : (size.height * .23) + verPos,
            bottom: page == 0 ? 0 : size.height * .20 - verPos,
            left: 30,
            right:30,
            child: CardsDesign().balanceCard(context, "Balance", 'assets/images/topUp.png', " "),
          ),

        Positioned(
            top: page == 0 ? 0 : (size.height * .38) + verPos,
            bottom: page == 0 ? 0 : size.height * .45 - verPos,
            left: 90,
            right:140,
             child:Padding(padding: EdgeInsets.only(bottom:45),
                                    child:Container(
                                              margin: EdgeInsets.only(left: 20 ),
                                             // height: height*0.08,
                                              width: 80,
                                              height: 80,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(25),
                                                ),
                                                color: Colors.white,
                                 ),
                                // padding: EdgeInsets.only(left: 95),     
                                 child: CardsDesign().balanceImage(balance: '5,000',path: 'assets/images/LE.png'),

                                ),
                              ),
                    ),
          // cards list
          Positioned(
            top: page == 0 ? 0 : (size.height * .50) + verPos,
            bottom: page == 0 ? 0 : size.height * .20 - verPos,
            left: 0,
            right:0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              reverse: true,
             
            child : Row(
             mainAxisSize: MainAxisSize.min,
              
              children:[
              
              SizedBox(width: 20),

              CategCard(categCard: CategCardModel( image: "assets/images/petrol.png", title: 'petrol Station', navigate: ()=> navigate(()=> Petrol()))),
              
              CategCard(categCard: CategCardModel( image: "assets/images/store.png",title: 'Store',navigate: ()=>  print('Store'))),

              CategCard(categCard: CategCardModel( image: "assets/images/vend_machine.png", title: 'Vending Machine', navigate: ()=> navigate(()=> Vending()))),
              
              ]),
                 
            ),
          ),


          // Nearby list
          Positioned(
            top: page == 0 ? 0 : (size.height * .75) + verPos,
            bottom: page == 0 ? 0 : 5,// (size.height *  )- verPos,
            left: 0,
            right:0,
            child : PageView(
           
            scrollDirection: Axis.horizontal,
             clipBehavior: Clip.none,
             reverse: true,
             controller: _pg,
            //child : Row(
              //  mainAxisSize: MainAxisSize.min,

            children:[ 

//              SizedBox(width: 20),

           //   BankCard(bankCard: BankCardModel( image: 'assets/bg_1.jpeg',icon: 'assets/icon_2.jpeg', number: '52', balance: 100.5 , navigate: ()=>  print('hable'))),
              
            //  BankCard(bankCard: BankCardModel( image: 'assets/bg_2.jpeg',icon: 'assets/icon_2.jpeg', number: '52', balance: 55.5)),

            //  BankCard(bankCard: BankCardModel( image: 'assets/bg_2.jpeg',icon: 'assets/icon_2.jpeg', number: '52', balance: 55.5)),
              
          //    Cards().Txt_BtnCard(context,"Reward", 'assets/icon_2.jpeg',()=> print('') , "" , 0.1),
             CardsDesign().nearbyCard(context,"Mobile",'300', "assets/images/location.png",()=> navigate(()=> Nearby()) , "" , 0.1),
             CardsDesign().nearbyCard(context,"Chill Out",'400', "assets/images/location.png",()=> navigate(()=> Nearby()) , "" , 0.1),
                                           
                       
       
                  
            ]),
          ),
          //)),
          //),
              /*            ),
               Row(
                mainAxisSize: MainAxisSize.min,
              
              children:[
              
              SizedBox(width: 20),

              BankCard(bankCard: BankCardModel( image: 'assets/bg_1.jpeg',icon: 'assets/icon_2.jpeg', number: '52', balance: 105.5 , navigate: ()=>  print('hable'))),
              
              BankCard(bankCard: BankCardModel( image: 'assets/bg_2.jpeg',icon: 'assets/icon_2.jpeg', number: '52', balance: 55.5)),

              BankCard(bankCard: BankCardModel( image: 'assets/bg_2.jpeg',icon: 'assets/icon_2.jpeg', number: '52', balance: 55.5)),
              
              ]),
                */ 
           // ),
       //   ),
        //  ),


          // Profile card
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
            top: MediaQuery.of(context).padding.top - verPos,
            left: (size.width * .1 - verPos).clamp(0, double.infinity).floorToDouble(),
            right: (size.width * .1 - verPos).clamp(0, double.infinity).floorToDouble() ,
            bottom: size.height * .77 - verPos,
            child: AnimatedSwitcher(
              switchInCurve: Curves.easeOut,
              switchOutCurve: Curves.easeIn,
              duration: const Duration(milliseconds: 150),
              child: pageClamp < .9
                  ? const SizedBox.shrink()
                  : GestureDetector(
                      onVerticalDragUpdate: onVerticalDrad,
                      onVerticalDragEnd: onVerticalDradEnds,
                      child: ProfileSection(verticalPos: verPos,),
                    ),
            ),
          ),


        // ),
         
/*
          Positioned(
            top: size.height * .85 + verPos,
            left: size.width * .1,
            right: size.width * .1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              reverse: true,
             //AnimatedSwitcher(
             // switchInCurve: Curves.easeOut,
             // switchOutCurve: Curves.easeIn,
            //  duration: const Duration(milliseconds: 100),
             // child: 
              
              /*pageClamp < .9
                  ? const SizedBox.shrink()
                  : TweenAnimationBuilder(
                      key: Key(cards[page.round()].expenses.first.description),
                      tween: Tween<double>(begin: 25.0, end: 0),
                      duration: const Duration(milliseconds: 200),
                      builder: (context, double value, _) {
                        return Transform.translate(         
                          offset: Offset(0, value),
                          */
                          child: ListTile(
                            leading: CircleAvatar(
                              foregroundImage: AssetImage(
                                cards[page.round()].expenses.first.image,
                              ),
                            ),
                            title: Text(
                              cards[page.round()].expenses.first.title,
                            ),
                            subtitle: Text(
                              cards[page.round()].expenses.first.description,
                            ),
                            trailing: Text(
                              "-\$${cards[page.round()].expenses.first.amount.toStringAsFixed(2)}",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),

                      )),
                      */
                     //},
                   // ),
          //),
           //)
         
        ],
        ),
      //),
    );
  }
}
