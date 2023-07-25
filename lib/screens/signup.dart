import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seedapp/models/login_page.dart';
import 'package:seedapp/screens/verify_email.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/custom_button.dart';
import '../utils/images.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  final _formKey= GlobalKey<FormState>();
  final emailController =TextEditingController();
  final passwordController= TextEditingController();

  DateTime? _selectedDate;

  FirebaseAuth _auth = FirebaseAuth.instance;

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential =
        await _auth.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );


        if (userCredential.user != null && !userCredential.user!.emailVerified) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VerifyEmail()),
          );
        } else {
          print('Signup successful!');
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        } else {
          print('Error: ${e.message}');
        }
      } catch (e) {
        print('Error: $e');
      }
    }
  }

  void _onButtonPressed(BuildContext context) {
    print("Button pressed!");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => VerifyEmail()));
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              AppImages.bgimg,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),


          Stack(
            children: [
              Positioned(
                top: 40,
                left: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Icon(Icons.arrow_back, size: 24, color: Colors.white),
                ),
              ),
              Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    AppStrings.signup,
                    style: GoogleFonts.poppins(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),


          Positioned(
            left: 0,
            right: 0,
            top: 85,
            child: Form(
              key:_formKey,
              child: Column(
                children: [
                  SizedBox(width: 20),

                  CustomTextField(
                    labelText: AppStrings.name,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    labelText: AppStrings.email,
                    controller: emailController,
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
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    labelText: AppStrings.confirmpwd,
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    labelText: AppStrings.country,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    labelText: AppStrings.dob,
                    readOnly: true,
                    controller: TextEditingController(
                      text: _selectedDate != null
                          ? '${_selectedDate!.day}/${_selectedDate!
                          .month}/${_selectedDate!.year}'
                          : '',
                    ),
                    onTap: () => _selectDate(context),
                    suffixIcon: Icon(Icons.calendar_month_outlined),
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    labelText: AppStrings.gender,
                  ),
                  //const SizedBox(height: 10),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: width * 0.07,),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: AppColors.white,
                              width: 2.0,
                            )
                        ),

                      ),
                      SizedBox(width: width * 0.04,),
                      Container(
                        width: 300,
                        child: UnderlinedText(
                          text: AppStrings.agreementtext,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: AppColors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Column(
              children: [
                CustomButton(
                  text: AppStrings.createac,
                  onPressed: _submitForm,
                  color: AppColors.colorButton,
                  width: 300.0,
                  height: 50.0,
                ),
                SizedBox(height: 10),
                UnderlinedText(
                  text: AppStrings.bottomtext2,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget CustomTextField({required String labelText,
    bool obscureText = false,
    TextEditingController? controller,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    FocusNode? focusNode,
    VoidCallback? onChanged,
    Function()? onEditingComplete,
    EdgeInsetsGeometry? contentPadding,
    VoidCallback? onTap,
    Icon? suffixIcon,
    bool? readOnly = false,
    String? Function(String?)? validator,
  }) {
    return Container(
      width: 300,
      height: 50,
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        onTap: onTap,
        controller: controller,
        obscureText: obscureText,
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
          suffixIcon: suffixIcon,
          // Add suffixIcon
          contentPadding: contentPadding,
        ),
        validator: validator,
      ),
    );
  }

  Widget UnderlinedText({
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
  }){
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: AppColors.white,
        decoration: TextDecoration.underline,
        decorationColor: Colors.white,
        decorationStyle: TextDecorationStyle.solid,
        decorationThickness: 2.0,
      ),
      textAlign: textAlign ?? TextAlign.left,
    );
  }

}








