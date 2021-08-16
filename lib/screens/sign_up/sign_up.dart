import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:laundro/screens/sign_in.dart';
import 'package:laundro/utilities/constants.dart';
import 'package:laundro/utilities/custom_page_route.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key, Null Function()? openDraw}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String _email;
  late String _password;
  late String _fullName;
  bool _isPassHidden = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 370),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back, size: 40),
                ),
              ),
              SizedBox(height: 28.5),
              Padding(
                padding: const EdgeInsets.only(right: 165),
                child: Text(
                  "Let’s start here",
                  style: GoogleFonts.poppins(
                    fontSize: 34,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: Text(
                  "Fill in your details to begin",
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    color: Color(0xff7A7A7A),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 40),
              buildTextFormField(
                pass: false,
                text: "First Name",
                textInputType: TextInputType.name,
              ),
              SizedBox(
                height: 20,
              ),
              buildTextFormField(
                pass: false,
                text: "Email Address",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              buildPasswordTextFormField(
                text: "Enter Password",
                onSave: (newValue) => _password = newValue,
                onChange: (value) =>
                    value.isEmpty ? 'Please enter password' : _password = value,
                validate: (value) =>
                    value.isEmpty ? 'Please enter password' : null,
                togglePasswordView: () {
                  setState(
                    () {
                      _isPassHidden = !_isPassHidden;
                    },
                  );
                },
                textInputType: TextInputType.visiblePassword,
                pass: _isPassHidden,
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // gradient: LinearGradient(colors: [
                  //   Color(0xffFB724C),
                  //   Color(0xffFE904B),
                  // ], begin: Alignment.centerLeft, end: Alignment.topRight),
                ),
                height: 58,
                child: SizedBox(
                  width: double.infinity,
                  child: buttonWidget(
                    buttonText: "Sign up",
                    buttonColor: Color(0xffFE904B),
                    buttonAction: () {
                      Navigator.pushReplacement(
                        context,
                        CustomPageRoute(
                          child: SignIn(),
                          direction: AxisDirection.left,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Spacer(),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'By signing in, I agree with',
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffB0B0B0),
                      ),
                    ),
                    TextSpan(
                      text: (' Terms of Use \nand Privacy Policy '),
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}


//  Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(begin: Alignment.centerRight,end: Alignment.centerLeft,
//                     colors: [
//                       Color(0xffFB724C),
//                       Color(0xffFB724b),
//                     ],
//                   ),
//                 ),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: buttonWidget(
//                     buttonText: "Create Account",
//                     // buttonColor: Color(0xffFB724C),
//                     buttonAction: () {},
//                   ),
//                 ),
//               ),