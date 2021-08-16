// class Model extends StatefulWidget {
//   const Model({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<Model> createState() => _ModelState();
// }

// class _ModelState extends State<Model> {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       scrollDirection: Axis.horizontal,
//       crossAxisCount: 1,
//       crossAxisSpacing: 4.0,
//       mainAxisSpacing: 8.0,
//       children: List.generate(
//         choices.length,
//         (index) {
//           return Column(
//             children: [
//               Container(
//                 height: 125,
//                 width: 179,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Image.asset(
//                   choices[index].image,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Text(
//                 choices[index].title,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     choices[index].subtitle,
//                   ),
//                   Container(
//                     child: Center(
//                       child: Text(
//                         choices[index].rating,
//                         style: GoogleFonts.poppins(
//                           fontSize: 10,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     width: 48,
//                     height: 25,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(7),
//                       color: Color(0xff2B2B2B),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           );
//         },
//       ),
//     );
//   }
// }


// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:laundro/screens/description.dart';
// // import 'package:laundro/utilities/custom_page_route.dart';

// // class Cards extends StatelessWidget {
// //   const Cards({
// //     Key? key,
// //   }) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return SingleChildScrollView(
// //       scrollDirection: Axis.horizontal,
// //       child: Row(
// //         children: [
// //           InkWell(
// //             onTap: () {
// //               Navigator.pushReplacement(
// //                 context,
// //                 CustomPageRoute(
// //                   child: Description(),
// //                   direction: AxisDirection.up,
// //                 ),
// //               );
// //             },
// //             child: Column(
// //               children: [
// //                 Container(
// //                   width: 179,
// //                   height: 125,
// //                   decoration: BoxDecoration(
// //                     image: DecorationImage(
// //                       image: AssetImage("assets/frame.png"),
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(height: 10),
// //                 Row(
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.only(right: 40),
// //                       child: Column(
// //                         children: [
// //                           Text(
// //                             'Mason York',
// //                             style: GoogleFonts.poppins(
// //                               fontSize: 17,
// //                               fontWeight: FontWeight.w500,
// //                               color: Colors.black,
// //                             ),
// //                           ),
// //                           Row(
// //                             children: [
// //                               Icon(Icons.location_on_outlined, size: 10),
// //                               Text(
// //                                 '7 km from you',
// //                                 style: GoogleFonts.poppins(
// //                                   fontSize: 10,
// //                                   fontWeight: FontWeight.w500,
// //                                   color: Color(0xffA1A1A1),
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     Container(
// //                       child: Center(
// //                         child: Text(
// //                           "&3/h",
// //                           style: GoogleFonts.poppins(
// //                             fontSize: 10,
// //                             fontWeight: FontWeight.w500,
// //                             color: Colors.white,
// //                           ),
// //                           textAlign: TextAlign.center,
// //                         ),
// //                       ),
// //                       width: 48,
// //                       height: 25,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.circular(7),
// //                         color: Color(0xff2B2B2B),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //           InkWell(
// //             onTap: () {},
// //             child: Container(
// //               child: Column(
// //                 children: [
// //                   Container(
// //                     width: 179,
// //                     height: 125,
// //                     decoration: BoxDecoration(
// //                       image: DecorationImage(
// //                         image: AssetImage("assets/frame.png"),
// //                       ),
// //                     ),
// //                   ),
// //                   SizedBox(height: 10),
// //                   Row(
// //                     children: [
// //                       Padding(
// //                         padding: const EdgeInsets.only(right: 40),
// //                         child: Column(
// //                           children: [
// //                             Text(
// //                               'Mason York',
// //                               style: GoogleFonts.poppins(
// //                                 fontSize: 17,
// //                                 fontWeight: FontWeight.w500,
// //                                 color: Colors.black,
// //                               ),
// //                             ),
// //                             Row(
// //                               children: [
// //                                 Icon(Icons.location_on_outlined, size: 10),
// //                                 Text(
// //                                   '7 km from you',
// //                                   style: GoogleFonts.poppins(
// //                                     fontSize: 10,
// //                                     fontWeight: FontWeight.w500,
// //                                     color: Color(0xffA1A1A1),
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       Container(
// //                         child: Center(
// //                           child: Text(
// //                             "&3/h",
// //                             style: GoogleFonts.poppins(
// //                               fontSize: 10,
// //                               fontWeight: FontWeight.w500,
// //                               color: Colors.white,
// //                             ),
// //                             textAlign: TextAlign.center,
// //                           ),
// //                         ),
// //                         width: 48,
// //                         height: 25,
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(7),
// //                           color: Color(0xff2B2B2B),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
