import 'package:axess_go/components/arrow_button.dart';
import 'package:axess_go/components/signup_btn.dart';
import 'package:axess_go/components/divider.dart';
import 'package:axess_go/routes/forgetScreen.dart';
import 'package:axess_go/components/input_field.dart';
import 'package:axess_go/components/toggle_button.dart';
import 'package:axess_go/enums/mode.dart';
import 'package:axess_go/models/login_theme.dart';
import 'package:axess_go/routes/logging.dart';
import 'package:axess_go/utils/cached_images.dart';
import 'package:axess_go/utils/viewport_size.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


TextEditingController emailController = new TextEditingController();
TextEditingController mobileController = new TextEditingController();
TextEditingController nameController = new TextEditingController();
TextEditingController busNameController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  LoginTheme login;
  LoginTheme signup;
  Mode _activeMode = Mode.login;

  final focusName = FocusNode();
  final focusMob = FocusNode();
  final focusPass = FocusNode();

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1000,
      ),
    );
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _animationController.forward(from: 0.0);
    }); // wait for all the widget to render
    initializeTheme(); //initializing theme for login and sign up
    super.initState();
    emailController.clear();
    nameController.clear();
    mobileController.clear();
    busNameController.clear();
    passwordController.clear();

    focusMob.addListener(() {});
    focusName.addListener(() {});
    focusPass.addListener(() {});
  }

  @override
  void didChangeDependencies() {
    cacheImages();
    super.didChangeDependencies();
  }

  cacheImages() {
    CachedImages.imageAssets.forEach((asset) {
      precacheImage(asset, context);
    });
  }

    void navigate(Function page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => page()));
      
    }

  initializeTheme() {
    login = LoginTheme(

      btn: ArrowButton(()=> navigate(()=>Logging())), //print('Login with Google')),
      backgroundGradient: [


      const Color(0xFF22252e),
      const Color(0xFF22252e),

      ],

    );

    signup = LoginTheme(

      btn: SignUpBtn(mobile: emailController.text.toString()),
      backgroundGradient: [
      
        const Color(0xFF22252e),
        const Color(0xFF22252e),
      ],
    
    );
  }


  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => navigate(()=>ForgetScreen()),
        child: Text(
          'Forget Password?',
            style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  
  Widget _buildSignInWithText() {
    return Row(
      
      children: <Widget>[
         Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.white , width: 2),
               ),
            ),
          ),
          
        Text(
          'Or better yet',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.0),
        Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.white , width: 2),
               ),
            ),
          ),
      ],
    );
  }

Widget _buildSocialBtn(Function onTap, AssetImage logo , String txt ,Color txtColor , Color bg) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50.0,
        width: 280.0,
        child:  Text(
          txt,
          style: TextStyle(
            color: txtColor ,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 16,
        )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ViewportSize.width * 0.025),
          color: bg,
          image: DecorationImage(
            alignment: Alignment.centerLeft,
            image: logo,
            
          ),
        ),
      ),
    );
}

  Widget _buildSocialBtnColumn() {
    return ( Container(
       child: Column (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

            Container(
            
            padding: EdgeInsets.only(left: 35 , top: 4),
            child: _buildSocialBtn( 
                    () => print(emailController.text.toString()),
                    AssetImage(
                      'assets/images/google_logo.png',
                    ),
                    'Sign Up with Google',
                    const Color(0xFF757575) ,
                    Colors.white,
                  ),    
           ),

          Container(
            
            padding: EdgeInsets.only(left: 35 , top: 15),
            child: _buildSocialBtn(
            () => print('Login with Apple'),
            AssetImage(
              'assets/images/apple_.jpg',
            ),
            'Sign Up with Apple',
            Colors.white ,
            Colors.black,
          ),
        ),
          
        ],
      ),
    )
    );
  }


 
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    ViewportSize.getSize(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: _activeMode == Mode.login
                ? login.backgroundGradient
                : signup.backgroundGradient,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
            
        child: Stack(
          alignment: Alignment.center,  
               
          children: [

            //left divider
            Positioned(
              top: height * 0.55,
              left: width * 0.001,
              child: DividerLine.buildDivider(),
              
            ),
            
            //right divider
             Positioned(
              top: height * 0.55,
              left: width * 0.620,
              child: DividerLine.buildDivider(),
              
            ),
         
             Positioned(
              top: height * 0.535,
              left: width * 0.41,
              child: _buildSignInWithText(),
              
            ),
            Positioned(
              top: height * 0.78,
              left: width * 0.33,
              child:_buildForgotPasswordBtn(),
            ),


            Positioned(
                 top: height * 0.02,
                 left: width * 0.35,
                child: buildImage(
                    padding: EdgeInsets.only(
                        top: height * 0.000001),
                   w: width * 0.30 ,
                   h: height * 0.25,
                  ), 
            ),
               
            
            Positioned(
              top: height * 0.25,
              left: width * 0.001,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children : [ToggleButton(
                    startText: 'Login',
                    endText: 'Create Account',
                    tapCallback: (index) {
                      setState(() {
                        _activeMode = index == 0 ? Mode.login : Mode.signup;
                        _animationController.forward(from: 0.0);
                        mobileController.clear();
                        emailController.clear();
                        passwordController.clear();
                        nameController.clear();
                        busNameController.clear();
                      });
                    },
                  )],
                  ),
                  ), 

            Positioned(
              top: height * 0.28,
              left: width * 0.08,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                
                 

      
                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                        top: height * 0.02),
                    fontSize: width * 0.04,
                  ),
                  _buildSocialBtnColumn(),

                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.05,
                    ),
                    fontSize: width * 0.04,
                  ),

                 _activeMode == Mode.signup ? 
                  InputField.buildName(nameController , focusName):

                  InputField.buildEmail(emailController , focusMob),
                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.001,
                    ),
                    fontSize: width * 0.04,
                  ),
                   _activeMode == Mode.signup ? 
                  InputField.buildEmail(emailController , focusMob) :
                  
                  InputField.buildPassword(passwordController,focusPass),
                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.001,
                    ),
                    fontSize: width * 0.04,
                  ),

                  _activeMode == Mode.login ?
                  buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.04,
                    ),
                    fontSize: width * 0.04,
                  ):
                  InputField.buildPassword(passwordController, focusPass),

                  _activeMode == Mode.signup ? //signup.btn :
                  SignUpBtn(mobile: emailController.text.toString()):
                  login.btn,

                   buildText(
                    text: '',
                    padding: EdgeInsets.only(
                      top: height * 0.001,
                    ),
                    fontSize: width * 0.04,
                  ),

                  
                   
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

@override
void dispose()
{
  focusPass.dispose();
  focusName.dispose();
  focusMob.dispose();
  super.dispose();
}

  Padding buildText(
      {double fontSize, EdgeInsets padding, String text, String fontFamily}) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          color: const Color(0xFFFFFFFF),
          fontSize: fontSize,
          fontFamily: fontFamily ?? '',
        ),
      ),
    );
  }

  Padding buildImage(
      { EdgeInsets padding, AssetImage logo , double w , double h}) {
    return Padding(
      padding: padding,
      child: Image.asset("assets/images/logo.png" , width: w , height: h),
    );
  }
}
