// ignore_for_file: avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundro/screens/home/home_screen.dart';
import 'package:laundro/utilities/constants.dart';
import 'package:laundro/utilities/custom_page_route.dart';

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      show(context);
    });
  }

  void show(BuildContext context) {
    showModalBottomSheet<void>(
        isDismissible: false,
        enableDrag: false,
        elevation: 10,
        barrierColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: double.infinity,
              //  color: Colors.red,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(height: 24),
                  Text(
                    "Alex Murray",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "5&/hr",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(width: 1, color: Colors.grey, height: 20),
                      SizedBox(width: 8),
                      Text(
                        "10 km",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(width: 1, color: Colors.grey, height: 20),
                      SizedBox(width: 8),
                      Row(
                        children: [
                          Text(
                            "4.4",
                            style: GoogleFonts.poppins(
                                color: Colors.black, fontSize: 13),
                          ),
                          Icon(
                            Icons.star,
                            size: 15.83,
                            color: Color(0xffA1A1A1),
                          ),
                        ],
                      ),
                      SizedBox(width: 8),
                      Container(width: 1, color: Colors.grey, height: 20),
                      SizedBox(width: 8),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '450',
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2B2B2B),
                              ),
                            ),
                            TextSpan(
                              text: ('  walks '),
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 44,
                        width: 99,
                        child: SizedBox(
                          width: double.infinity,
                          child: buttonWidget(
                            buttonText: "About",
                            buttonColor: Color(0xff2B2B2B),
                            buttonAction: () {},
                          ),
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 99,
                        child: SizedBox(
                          width: double.infinity,
                          child: buttonWidget3(
                            buttonText: "Location",
                            buttonColor: Color(0xffF5F5F5),
                            buttonAction: () {},
                          ),
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 99,
                        child: SizedBox(
                          width: double.infinity,
                          child: buttonWidget3(
                            buttonText: "Reviews",
                            buttonColor: Color(0xffF5F5F5),
                            buttonAction: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Age \n',
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                text: ('30 years'),
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff2B2B2B),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 40),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Experience \n',
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                text: ('11 months'),
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff2B2B2B),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 30),
                    child: Column(
                      children: [
                        Text(
                          "Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter often and gets along so well with awesome and cool animals like...",
                          style: GoogleFonts.poppins(
                            color: Color(0xffB0B0B0),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          //textAlign: TextAlign.justify,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Read more",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.underline,
                              color: Color(0xffFB824C),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                            //textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 58,
                    width: 343,
                    child: SizedBox(
                      width: double.infinity,
                      child: buttonWidget(
                        buttonText: "Check schedule",
                        buttonColor: Color(0xffFB824C),
                        buttonAction: () {},
                      ),
                    ),
                  ),
                ],
              )));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Row(
            children: [
              Container(
                height: 44,
                width: 44,
                margin: EdgeInsets.only(bottom: 450),
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        CustomPageRoute(
                          child: HomeScreen(),
                          direction: AxisDirection.up,
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.cancel_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xffc4c4c4).withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Container(
                  height: 44,
                  width: 101,
                  margin: EdgeInsets.only(bottom: 420),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Verified",
                        // textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Color(0xffF8F8F8),
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const Icon(
                        Icons.check_box_rounded,
                        size: 16.68,
                        color: Color(0xffF8F8F8),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffc4c4c4).withOpacity(0.4),
                  ),
                ),
              ),
            ],
          ),
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/image.png'),
            fit: BoxFit.cover,
          ))),
    );

    // Size size = MediaQuery.of(context).size;
    // return Scaffold(
    //   body: Column(
    //     children: [
    //       SingleChildScrollView(
    //         child: Column(
    //           children: [
    //             SizedBox(
    //               width: (450),
    //               height: (520),
    //               child: Stack(
    //                 children: [
    //                   Container(
    //                     decoration: BoxDecoration(
    //                       image: DecorationImage(
    //                         fit: BoxFit.cover,
    //                         image: AssetImage("assets/image.png"),
    //                       ),
    //                       color: Colors.black,
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(right: 200),
    //                     child: Container(
    //                       height: 44,
    //                       width: 44,
    //                       margin: EdgeInsets.only(top: 30),
    //                       child: Container(
    //                         child: IconButton(
    //                           onPressed: () {
    //                             Navigator.pop(context);
    //                           },
    //                           icon: Icon(
    //                             Icons.cancel_sharp,
    //                             color: Colors.white,
    //                           ),
    //                         ),
    //                       ),
    //                       decoration: BoxDecoration(
    //                         color: Color(0xffc4c4c4).withOpacity(0.4),
    //                         shape: BoxShape.circle,
    //                       ),
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: const EdgeInsets.only(left: 295),
    //                     child: Container(
    //                       height: 44,
    //                       width: 101,
    //                       margin: EdgeInsets.only(top: 30),
    //                       child: Padding(
    //                         padding: const EdgeInsets.only(left: 10),
    //                         child: Row(
    //                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                           children: [
    //                             Text(
    //                               "Verified",
    //                               // textAlign: TextAlign.center,
    //                               style: GoogleFonts.poppins(
    //                                 color: Color(0xffF8F8F8),
    //                                 fontSize: 13,
    //                                 fontWeight: FontWeight.w800,
    //                               ),
    //                             ),
    //                             const Icon(
    //                               Icons.check_box_rounded,
    //                               size: 16.68,
    //                               color: Color(0xffF8F8F8),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                       decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(20),
    //                         color: Color(0xffc4c4c4).withOpacity(0.4),
    //                       ),
    //                     ),
    //                   ),
    //                   Container(
    //                     //height: size.height / 1,
    //                     width: MediaQuery.of(context).size.height / 100 * 50,
    //                     decoration: const BoxDecoration(
    //                       color: Colors.red,
    //                       borderRadius: BorderRadius.only(
    //                         topLeft: Radius.circular(40),
    //                         topRight: Radius.circular(80),
    //                       ),
    //                     ),
    //                     child: Expanded(
    //                       child: Column(children: [
    //                         // SizedBox(height: 24),
    //                         Text(
    //                           "Alex Murray",
    //                           textAlign: TextAlign.center,
    //                           style: GoogleFonts.poppins(
    //                               color: Colors.black,
    //                               fontSize: 28,
    //                               fontWeight: FontWeight.w800),
    //                         ),
    //                         Text(
    //                           "Alex Murray",
    //                           textAlign: TextAlign.center,
    //                           style: GoogleFonts.poppins(
    //                               color: Colors.black,
    //                               fontSize: 28,
    //                               fontWeight: FontWeight.w800),
    //                         ),
    //                         Text(
    //                           "Alex Murray",
    //                           textAlign: TextAlign.center,
    //                           style: GoogleFonts.poppins(
    //                               color: Colors.black,
    //                               fontSize: 28,
    //                               fontWeight: FontWeight.w800),
    //                         ),
    //                         Text(
    //                           "Alex Murray",
    //                           textAlign: TextAlign.center,
    //                           style: GoogleFonts.poppins(
    //                               color: Colors.black,
    //                               fontSize: 28,
    //                               fontWeight: FontWeight.w800),
    //                         ),
    //                         Text(
    //                           "Alex Murray",
    //                           textAlign: TextAlign.center,
    //                           style: GoogleFonts.poppins(
    //                               color: Colors.black,
    //                               fontSize: 28,
    //                               fontWeight: FontWeight.w800),
    //     )
    //   ]),
    // ),
    // child: Expanded(
    //   child: Column(
    //     children: [
    //       SizedBox(height: 24),
    //       Text(
    //         "Alex Murray",
    //         textAlign: TextAlign.center,
    //         style: GoogleFonts.poppins(
    //             color: Colors.black,
    //             fontSize: 28,
    //             fontWeight: FontWeight.w800),
    //       ),
    //       SizedBox(height: 30),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(
    //             "5&/hr",
    //             style: GoogleFonts.poppins(
    //               color: Colors.black,
    //               fontSize: 13,
    //             ),
    //           ),
    //           VerticalDivider(
    //             color: Colors.red,
    //             thickness: 2,
    //             width: 30,
    //             //endIndent: 80,
    //           ),
    //           Text(
    //             "10 km",
    //             style: GoogleFonts.poppins(
    //               color: Colors.black,
    //               fontSize: 13,
    //             ),
    //           ),
    //           VerticalDivider(
    //             color: Colors.red,
    //             thickness: 2,
    //             width: 30,
    //             //endIndent: 80,
    //           ),
    //           Row(
    //             children: [
    //               Text(
    //                 "4.4",
    //                 style: GoogleFonts.poppins(
    //                     color: Colors.black,
    //                     fontSize: 13),
    //               ),
    //               Icon(
    //                 Icons.star,
    //                 size: 15.83,
    //                 color: Color(0xffA1A1A1),
    //               ),
    //             ],
    //           ),
    //           VerticalDivider(
    //             color: Colors.red,
    //             thickness: 2,
    //             width: 30,
    //             //endIndent: 80,
    //           ),
    //           RichText(
    //             text: TextSpan(
    //               children: <TextSpan>[
    //                 TextSpan(
    //                   text: '450',
    //                   style: GoogleFonts.poppins(
    //                     fontSize: 13,
    //                     fontWeight: FontWeight.w500,
    //                     color: Color(0xff2B2B2B),
    //                   ),
    //                 ),
    //                 TextSpan(
    //                   text: ('  walks '),
    //                   style: GoogleFonts.poppins(
    //                     fontSize: 13,
    //                     fontWeight: FontWeight.w500,
    //                     color: Colors.grey,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Divider(
    //         thickness: 2,
    //       ),
    //       Row(
    //         mainAxisAlignment:
    //             MainAxisAlignment.spaceAround,
    //         children: [
    //           Container(
    //             height: 44,
    //             width: 99,
    //             child: SizedBox(
    //               width: double.infinity,
    //               child: buttonWidget(
    //                 buttonText: "About",
    //                 buttonColor: Color(0xff2B2B2B),
    //                 buttonAction: () {},
    //               ),
    //             ),
    //           ),
    //           Container(
    //             height: 44,
    //             width: 99,
    //             child: SizedBox(
    //               width: double.infinity,
    //               child: buttonWidget3(
    //                 buttonText: "Location",
    //                 buttonColor: Color(0xffF5F5F5),
    //                 buttonAction: () {},
    //               ),
    //             ),
    //           ),
    //           Container(
    //             height: 44,
    //             width: 99,
    //             child: SizedBox(
    //               width: double.infinity,
    //               child: buttonWidget3(
    //                 buttonText: "Reviews",
    //                 buttonColor: Color(0xffF5F5F5),
    //                 buttonAction: () {},
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //       SizedBox(
    //         height: 30,
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.only(left: 30),
    //         child: Row(
    //           children: [
    //             RichText(
    //               text: TextSpan(
    //                 children: <TextSpan>[
    //                   TextSpan(
    //                     text: 'Age \n',
    //                     style: GoogleFonts.poppins(
    //                       fontSize: 13,
    //                       fontWeight: FontWeight.w500,
    //                       color: Colors.grey,
    //                     ),
    //                   ),
    //                   TextSpan(
    //                     text: ('30 years'),
    //                     style: GoogleFonts.poppins(
    //                       fontSize: 13,
    //                       fontWeight: FontWeight.w500,
    //                       color: Color(0xff2B2B2B),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             SizedBox(width: 40),
    //             RichText(
    //               text: TextSpan(
    //                 children: <TextSpan>[
    //                   TextSpan(
    //                     text: 'Experience \n',
    //                     style: GoogleFonts.poppins(
    //                       fontSize: 13,
    //                       fontWeight: FontWeight.w500,
    //                       color: Colors.grey,
    //                     ),
    //                   ),
    //                   TextSpan(
    //                     text: ('11 months'),
    //                     style: GoogleFonts.poppins(
    //                       fontSize: 13,
    //                       fontWeight: FontWeight.w500,
    //                       color: Color(0xff2B2B2B),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       SizedBox(height: 10),
    //       Padding(
    //         padding: const EdgeInsets.only(
    //             right: 10, left: 30),
    //         child: Column(
    //           children: [
    //             Text(
    //               "Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter often and gets along so well with awesome and cool animals like...",
    //               style: GoogleFonts.poppins(
    //                 color: Color(0xffB0B0B0),
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.w500,
    //               ),
    //               //textAlign: TextAlign.justify,
    //             ),
    //             TextButton(
    //               onPressed: () {},
    //               child: Text(
    //                 "Read more",
    //                 style: GoogleFonts.poppins(
    //                   decoration:
    //                       TextDecoration.underline,
    //                   color: Color(0xffFB824C),
    //                   fontSize: 13,
    //                   fontWeight: FontWeight.w500,
    //                 ),
    //                 //textAlign: TextAlign.justify,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       SizedBox(height: 30),
    //       Container(
    //         height: 58,
    //         width: 343,
    //         child: SizedBox(
    //           width: double.infinity,
    //           child: buttonWidget(
    //             buttonText: "Check schedule",
    //             buttonColor: Color(0xffFB824C),
    //             buttonAction: () {},
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
