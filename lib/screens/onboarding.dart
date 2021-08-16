import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundro/screens/sign_in.dart';
import 'package:laundro/screens/sign_up/sign_up.dart';
import 'package:laundro/utilities/constants.dart';
import 'package:laundro/utilities/custom_page_route.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/onboarding.png",
            ),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffFFFFFF),
              Color(0xff3C3C3C),
              Color(0xff202020),
              Color(0xff202020),
              Color(0xff202020),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    child: Image(
                      image: AssetImage("assets/icon.png"),
                    ),
                  ),
                  Text(
                    "WOO \nDOG ",
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      color: Color(0xffE73A40),
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              "Too tired to walk your dog? ",
              style: GoogleFonts.poppins(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Let’s help you!",
              style: GoogleFonts.poppins(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      Color(0xffFB724C),
                      Color(0xffFE904B),
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  ),
                  height: 58,
                  width: 324,
                  child: SizedBox(
                    width: double.infinity,
                    child: buttonWidget(
                      buttonText: "Join our community",
                      buttonColor: Colors.transparent,
                      buttonAction: () {
                        Navigator.pushReplacement(
                          context,
                          CustomPageRoute(
                            child: SignUp(),
                            direction: AxisDirection.left,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 5),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      CustomPageRoute(
                        child: SignIn(),
                        direction: AxisDirection.left,
                      ),
                    );
                  },
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Already a member?',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: (' Sign In '),
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFB724C),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
