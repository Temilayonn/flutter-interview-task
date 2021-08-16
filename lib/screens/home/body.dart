import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:laundro/models/data.dart';
import 'package:laundro/screens/description.dart';
import 'package:laundro/screens/sign_in.dart';
import 'package:laundro/screens/sign_up/sign_up.dart';
import 'package:laundro/utilities/constants.dart';
import 'package:laundro/utilities/custom_page_route.dart';
import 'package:laundro/widgets/card.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class Choice {
  const Choice(
      {required this.rating,
      required this.title,
      required this.subtitle,
      required this.image});
  final String title;
  final String subtitle;
  final String image;
  final String rating;
}

const List<Choice> choices = const <Choice>[
  const Choice(
    title: 'Mason York',
    subtitle: '7 km from you',
    image: "assets/frame.png",
    rating: "5&/h",
  ),
  const Choice(
    title: 'Mark Greene',
    subtitle: '17 km from you',
    image: "assets/frame2.png",
    rating: "5&/h",
  ),
  const Choice(
    title: 'Trina Kain',
    subtitle: '7 km from you',
    image: "assets/frame.png",
    rating: "5&/h",
  ),
  const Choice(
    title: 'Mark Greene',
    subtitle: '7 km from you',
    image: "assets/frame2.png",
    rating: "5&/h",
  ),
  const Choice(
    title: 'Mason York',
    subtitle: '7 km from you',
    image: "assets/frame2.png",
    rating: "5&/h",
  ),
  const Choice(
    title: 'Mark Greene',
    subtitle: '7 km from you',
    image: "assets/frame.png",
    rating: "5&/h",
  ),
];

class _BodyState extends State<Body> {
  int _currentTab = 0;
  late Widget _widget;
  List<Widget> itemsData = [];
  TextEditingController searchController = new TextEditingController();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Home',
                              style: GoogleFonts.poppins(
                                fontSize: 34,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: ('\nExplore dog walkers'),
                              style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffB0B0B0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //  Icon(Icons.add),
                      Container(
                        height: 41,
                        width: 104,
                        child: SizedBox(
                          width: double.infinity,
                          child: buttonWidget2(
                            buttonText: "Book a walk",
                            buttonColor: Color(0xffFB724C),
                            buttonAction: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 21.75,
                  ),
                  buildSearchField(
                    'Kiyv, Ukraine',
                    (val) {
                      // searchValues.add(val);
                    },
                    searchController,
                  ),
                  SizedBox(height: 22.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Near you ",
                        style: GoogleFonts.poppins(
                          fontSize: 34,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "view all ",
                        style: GoogleFonts.poppins(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 9.5),
                  Models(),
                  SizedBox(height: 20),
                  Divider(
                    height: 4,
                    color: Color(0xffE8E8E8),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Suggested",
                        style: GoogleFonts.poppins(
                          fontSize: 34,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "view all",
                        style: GoogleFonts.poppins(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 9.5),
                  Models(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        currentIndex: _currentTab,
        onTap: (int val) {
          setState(() {
            _currentTab = val;
          });
        },
        unselectedItemColor: Color(0xffB0B0B0),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              size: 30,
            ),
            label: "Moments",
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
    return scaffold;
  }
}

class Models extends StatelessWidget {
  const Models({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 1,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: List.generate(
          choices.length,
          (index) {
            return Column(
              children: [
                Container(
                  height: 125,
                  width: 179,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        CustomPageRoute(
                          child: Description(),
                          direction: AxisDirection.up,
                        ),
                      );
                    },
                    child: Image.asset(
                      choices[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Text(
                        choices[index].title,
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.location_on_outlined, size: 10),
                        Text(
                          choices[index].subtitle,
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffA1A1A1),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              choices[index].rating,
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          width: 48,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(0xff2B2B2B),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
