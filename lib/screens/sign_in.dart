import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundro/screens/home/home_screen.dart';
import 'package:laundro/services/auth.dart';
import 'package:laundro/utilities/constants.dart';
import 'package:laundro/utilities/custom_page_route.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key, Null Function()? openDraw}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
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
              SizedBox(height: 28.5),
              Padding(
                padding: const EdgeInsets.only(right: 162),
                child: Text(
                  "Welcome back",
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
                padding: const EdgeInsets.only(right: 79),
                child: Text(
                  "Enter your details your details to continue",
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
                  // ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                ),
                height: 58,
                child: SizedBox(
                  width: double.infinity,
                  child: buttonWidget(
                    buttonText: "Sign In",
                    buttonColor: Color(0xffFE904B),
                    buttonAction: () async {
                      dynamic result = await _auth.signInAnon();
                      if (result == null) {
                        print('error signing in');
                      } else {
                        print('signed in');
                        print(result);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
