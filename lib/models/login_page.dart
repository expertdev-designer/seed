import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:seedapp/main.dart';
import 'package:seedapp/screens/signup.dart';
import 'package:seedapp/utils/app_colors.dart';
import 'package:seedapp/utils/app_strings.dart';
import 'package:seedapp/utils/custom_button.dart';
import 'package:seedapp/utils/images.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';



import '../data/authpage.dart';
import '../screens/forgot_password.dart';
import '../utils/toastmsg.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  bool isLoading=false;
  void _onButtonPressed(BuildContext context) {
    print("Button pressed!");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage()),
    );
  }

  void _loginUser() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading=true;
      });
      try {
        UserCredential userCredential =
        await _auth.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );


        //if (userCredential.user != null && userCredential.user!.emailVerified) {
        if (userCredential.user != null) {
          if (userCredential.user!.emailVerified) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          } else {
            ToastUtils.showMessage('Please verify your email.');
          }
        } else {
          ToastUtils.showMessage('No user found for that email.');
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'wrong-password') {
          ToastUtils.showMessage('Wrong password provided for that user.');
        } else {
          ToastUtils.showMessage('Error: ${e.message}');
        }
      } catch (e) {
        ToastUtils.showMessage('Error: $e');
      }

      setState(() {
        isLoading=false;
      });
    }
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
      } else {
        ToastUtils.showMessage('Google sign-up canceled');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'sign_in_failed') {
        ToastUtils.showMessage('Google sign-in failed. Please try again.');
      } else {
        ToastUtils.showMessage('Error: ${e.message}');
      }
    } catch (e) {
      ToastUtils.showMessage('Error: $e');
    }
  }



  Future<void> signInWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();
      if (result.status == LoginStatus.success) {
        final AccessToken accessToken = result.accessToken!;
        final AuthCredential credential = FacebookAuthProvider.credential(accessToken.token);
        await FirebaseAuth.instance.signInWithCredential(credential);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
      } else {
        ToastUtils.showMessage('facebook sign up cancel');
      }
    } catch (e) {
      ToastUtils.showMessage('Error: $e');
      print('Error: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.bgimg,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImages.logosvg, width: 55, height: 55),
                Text(
                  AppStrings.seed,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 210,
            child: Form(
              key:_formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 20),
                  CustomTextField(
                    labelText: AppStrings.email,
                    obscureText: false,
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    labelText: AppStrings.password,
                    obscureText: true,
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  // CustomButton(
                  //   text: 'Log In',
                  //   onPressed: () => _loginUser(),
                  //   color: AppColors.colorButton,
                  //   width: 300.0,
                  //   height: 50.0,
                  // ),
                  CustomButton(
                    text: 'Log In',
                    isLoading: isLoading,
                    onPressed: _loginUser,
                      color: AppColors.colorButton,
                      width: 300.0,
                      height: 50.0,
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword(),));
                        },
                        child: AppText(
                          text: AppStrings.forgotpwd,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: AppColors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 2.0,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),


        ],
      ),
        ),
        ),
          Positioned(
              top: 450,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: AppStrings.signinwith,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => signInWithFacebook(),
                        child: Container(
                          width: 80,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.facebook,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Transform.scale(
                            scale: 0.3,
                            child: SvgPicture.asset(AppImages.facebook),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap: () =>   signInWithGoogle(context),
                        child: Container(
                          width: 80,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Transform.scale(
                            scale: 0.3,
                            child: SvgPicture.asset(AppImages.googlesvg),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),

                      Container(
                        width: 80,
                        height: 60,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Transform.scale(
                          scale: 0.3,
                          child: SvgPicture.asset(AppImages.apple),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ));
              },
              child: AppText(
                text: AppStrings.bottomtext,
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: AppColors.white,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                decorationStyle: TextDecorationStyle.solid,
                decorationThickness: 2.0,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
        ),
    );
  }

  Widget CustomTextField(
      {required String labelText,
        bool obscureText = false,
        String? Function(String?)? validator,
        TextEditingController? controller,
        TextInputType? keyboardType,
      }) {
    return Container(
      width: 300,
      height: 50,
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: obscureText,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.white,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        validator: validator,
      ),
    );
  }

  Widget AppText({
    required String text,
    double fontSize = 15,
    FontWeight fontWeight = FontWeight.normal,
    Color color = AppColors.white,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
      ),
      textAlign: textAlign ?? TextAlign.left,
    );
  }


}







