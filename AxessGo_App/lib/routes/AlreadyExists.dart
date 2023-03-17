import 'package:axess_go/components/button.dart';
import 'package:axess_go/routes/VerifyMobile.dart';
import 'package:axess_go/routes/login.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';


class AlreadyExists extends StatefulWidget {

  final String mobile ;
  
  const AlreadyExists(this.mobile, {String text});

  @override
  _LoginState createState() => _LoginState();
  
}


TextEditingController emailController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();


class _LoginState extends State<AlreadyExists> with SingleTickerProviderStateMixin {

  //final scaffoldKey = GlobalKey<ScaffoldState>();
  //GlobalKey<FormState> _key = new GlobalKey();


  void navigate(Function page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>page())); 
  }

  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return MaterialApp(
     home: Scaffold(
        backgroundColor: const Color(0xFF22252e), 
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          
          child: SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              
             
               SizedBox(height: 20),


                 buildText(
                    text: '',
                    padding: EdgeInsets.only(
                        top: height * 0.0001),
                    fontSize: width * 0.04,
                  ),

                Container(

                 child :IconButton(onPressed:() => navigate(()=>Login()) , icon: Icon(Icons.arrow_back), color:Colors.white , alignment: Alignment.topLeft ,),

                ),
               buildText(
                    text: 'Account Already Exists',
                    padding: EdgeInsets.only(
                        top: height * 0.02 ,
                        left: width* 0.20,),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
                 
                 Container(
                 alignment: Alignment.center,
                  child : buildText(
                    text: widget.mobile.toString(),
                    padding: EdgeInsets.only(
                          top: height * 0.05 ),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.white,
                  ),
                 ),
                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                    ),
                    fontSize: width * 0.04,
                  ),
                  buildText(
                    text: 'This phone number is linked ',
                    padding: EdgeInsets.only(
                        top: height * 0.01 ,
                        left: width* 0.11,),
                    fontSize: width * 0.055,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: const Color(0xFFcbedea),

                  ),
                  buildText(
                    text: 'to an existing Axess Account',
                    padding: EdgeInsets.only(
                        top: height * 0.01 ,
                        left: width* 0.12,),
                    fontSize: width * 0.055,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'VarelaRound',
                    color: const Color(0xFFcbedea),

                  ),
                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                    ),
                    fontSize: width * 0.04,
                  ),

                  buildText(
                    text: 'if this isn\'t yours , go back ',
                    padding: EdgeInsets.only(
                        top: height * 0.001 ,
                        left: width* 0.20,),
                    fontSize: width * 0.045,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
                    buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.001,
                    ),
                    fontSize: width * 0.04,
                  ),
                
                  buildText(
                    text: 'if this is yours...',
                    padding: EdgeInsets.only(
                        top: height * 0.001 ,
                        left: width* 0.30,),
                    fontSize: width * 0.045,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
             
                SizedBox(
                  height: 140,
                ),
                
                Button.build('Continue' , Alignment.center , () => navigate(()=>VerifyMobile(widget.mobile.toString())), 0.95),
               

              ],
            ),
          ),
        ),
        ),
      //),
    );
  }


                  
                 
/*
    return MaterialApp(
     home: Scaffold(

        backgroundColor: const Color(0xFF22252e), 
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
           
          child: SingleChildScrollView(
            
          child:  Form(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: <Widget>[

                
                SizedBox(height: 30),
                /*
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                */
                SizedBox(
                  height: 10,
              
                ),

               // Container(
                     
                 //   child:IconButton(onPressed:() => navigatePage() , icon: Icon(Icons.arrow_back), color:Colors.white),
                  //  top: height*0.05,
                  //  left: width *0.01 ,
                  
                //),
               
                
                IntlPhoneField(
                  decoration: InputDecoration(
                    //labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(ViewportSize.width* 0.025),
                   ),
                      //borderSide: BorderSide(),
                   // ),
                  ),
                 // onChanged: (phone) {
                   // print(phone.completeNumber);
                  //},
                  onCountryChanged: (phone) {
                    print('Country code changed to: ' + phone.countryCode);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  child: Text('Submit'),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                   // _formKey.currentState.validate();
                  },
                ),
              ],
            ),
          ),
        ),
        ),
      ),
    );
  }

*/





































/*
    return Scaffold(
      body: Container(
        child: Stack(
          
          alignment: Alignment.center,           
          children: [

                  Container(   //bg
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xFF22252e),
                      ),
                    ),

                  Positioned(
                     top: height*0.05,
                     left: width *0.01 ,
                    child:IconButton(onPressed:() => navigatePage() , icon: Icon(Icons.arrow_back), color:Colors.white),
                    ),
                  
        
                  Positioned(
                    top: height * 0.23,
                    left: width * 0.001,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children : [ 
                      //  SingleChildScrollView(
                         
                  IntlPhoneField(
                  decoration: InputDecoration(
                    //labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width* 0.025),
                   ),
                  ),
                  ),
                  
                  /*
                  ToggleButton(
                    startText: 'Login',
                    endText: 'Create Account',
                    tapCallback: (index) {
                      setState(() {
                     //   _activeMode = index == 0 ? Mode.login : Mode.signup;
                      ///  _animationController.forward(from: 0.0);
                        emailController.clear();
                        passwordController.clear();
                        nameController.clear();
                      });
                    },
                    */
                  //)
                  ]
                 
                  ),
                  ), 
      
            Positioned(
              top: height * 0.18,
              left: width * 0.08,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  /*
                  buildText(
                    text: _activeMode == Mode.login ? login.title : signup.title,
                    padding: EdgeInsets.only(top: height * 0.04),
                    fontSize: width * 0.09,
                    fontFamily: 'YesevaOne',
                  ),
                  */
                  buildText(
                    text: 'Forget Password ?',
                    padding: EdgeInsets.only(
                        top: height * 0.001 ,
                        left: width* 0.20,),
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),

                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                        top: height * 0.01),
                    fontSize: width * 0.04,
                  ),
                  buildText(
                    text: 'We just need your registered mobile',
                    padding: EdgeInsets.only(
                        top: height * 0.001 ,
                        left: width* 0.075,),
                    fontSize: width * 0.043,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: const Color(0xFFcbedea),

                  ),
                  buildText(
                    text: 'number to send your reset passcode',
                    padding: EdgeInsets.only(
                        top: height * 0.001 ,
                        left: width* 0.075,),
                    fontSize: width * 0.043,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'VarelaRound',
                    color: const Color(0xFFcbedea),

                  ),
                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                    ),
                    fontSize: width * 0.04,
                  ),

                  buildText(
                    text: 'Mobile number',
                    padding: EdgeInsets.only(
                        top: height * 0.001 ,
                        left: width* 0.02,),
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                    color: Colors.white,

                  ),
                    buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.01,
                    ),
                    fontSize: width * 0.04,
                  ),
                  
               
                  InputField.buildEmail(emailController),
                  Button.build('Submit'),
                   
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  */
 Padding buildText(
      {double fontSize, EdgeInsets padding,  String text, Color color , String fontFamily , FontWeight fontWeight}) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color , //const Color(0xFFFFFFFF),
          fontSize: fontSize,
          fontFamily: fontFamily ?? '',
          fontWeight: fontWeight ,
        ),
      ),
    );
  }
}


















/*

    return Scaffold(
        key: scaffoldKey,
        body: Form(
          key: _key,
          autovalidate: _validate,
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                children: <Widget>[
                  
                

                  Container(   //bg
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xFF22252e),
                      ),
                    ),
                 Positioned(
                     top: height*0.05,
                     left: width *0.01 ,
                    child:IconButton(onPressed:() => print('Login with Google') , icon: Icon(Icons.arrow_back), color:Colors.white),
                    ),
                  
                  Container(
                    height: double.infinity,
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.0,
                        vertical: 100.0,
                      ),
                     
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Container(
                           child : IconButton(onPressed:navigatePage , icon: Icon(Icons.arrow_back), color:Colors.white),
                           padding: EdgeInsets.only(
                             left: 5,
                             top: 2,
                           )
                      //  horizontal: 40.0,
                        //vertical: 100.0,
                      //),
                           
                          ),
                          Text(
                            'Forget Password ?',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InputField.buildName(nameController),
                          SizedBox(height: 40.0),
                          InputField.buildEmail(emailController),

                          SizedBox(height: 20.0),
                //          InputField.buildName(nameController),

                          SizedBox(
                            height: 20.0,
                          ),
              //            InputField.buildEmail(emailController),

                          SizedBox(
                            height: 20.0,
                          ),
//                          InputData.buildLoginBtn("REGISTER", validateData),

  //                        InputData.buildSignupSigninBtn(
    //                          "Already have an Account?",
        //                      "Sign In",
      //                        navigatePage)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

}
*/