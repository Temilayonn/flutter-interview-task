//import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kSECRET_KEY = "sk_test_414a941f5dd0feeca0465bf86813cf5d830e562f";

List<String> searchValues = [];

bool validateEmail(String value) {
  bool _msg;
  RegExp regex = new RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  if (value.isEmpty) {
    // _msg = "Your username is required";
    _msg = false;
  } else if (!regex.hasMatch(value)) {
    // _msg = "Please provide a valid emal address";
    _msg = false;
  }
  return true;
}

//final detailsPageTransitionType = ContainerTransitionType.fade;

Widget buildTextField(String text) {
  final color = Colors.white;

  return TextField(
    keyboardType: TextInputType.name,
    style: TextStyle(
      color: Color(0xFF10151A),
    ),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xFFBABABA), fontWeight: FontWeight.w400, fontSize: 15),
      filled: true,
      fillColor: Color(0xFFF7F7F7),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
    ),
  );
}

Widget buildSearchField(String text, Function(String) onSubmit, control) {
  final color = Colors.white;

  return TextField(
    onSubmitted: onSubmit,
    controller: control,
    style: TextStyle(
      color: Color(0xFF10151A),
    ),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: text,
      hintStyle: GoogleFonts.poppins(
        color: Color(0xFFBABABA),
        fontWeight: FontWeight.w400,
        fontSize: 17,
      ),
      prefixIcon: Icon(
        Icons.location_on_outlined,
        color: Color(0xFFBABABA),
      ),
      suffixIcon: Icon(
        Icons.settings_suggest,
        color: Color(0xffB0B0B0),
      ),
      filled: true,
      fillColor: Color(0xffF0F0F0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
    ),
  );
}

Widget buildSearch(String text, Function(String) onSubmit, control) {
  final color = Colors.white;

  return TextField(
    onSubmitted: onSubmit,
    controller: control,
    style: TextStyle(
      color: Color(0xFF10151A),
    ),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: text,
      hintStyle: GoogleFonts.poppins(
        color: Color(0xFFBABABA),
        fontWeight: FontWeight.w400,
        fontSize: 17,
      ),
      prefixIcon: Icon(
        Icons.search_outlined,
        color: Color(0xFFBABABA),
      ),
      suffixIcon: Icon(
        Icons.settings_suggest,
        color: Color(0xffB0B0B0),
      ),
      filled: true,
      fillColor: Color(0xffF0F0F0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
    ),
  );
}

// Row subTitle(
//     {required String title,
//     required Color color,
//     required VoidCallback onTapped}) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text(
//         title,
//         style: TextStyle(
//           fontSize: 17,
//           color: Color(0xFF3C673D),
//           fontWeight: FontWeight.w700,
//         ),
//       ),
//       GestureDetector(
//         onTap: onTapped,
//         child: Row(
//           children: [
//             Text(
//               "View all  ",
//               style: TextStyle(
//                 fontSize: 13,
//                 color: color,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     ],
//   );
// }

Widget buttonWidget(
    {required VoidCallback buttonAction,
    required Color buttonColor,
    required String buttonText}) {
  return Material(
    color: buttonColor,
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    elevation: 1,
    child: MaterialButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(
            color: Color(0xffF6F7FA),
            fontSize: 17,
            fontWeight: FontWeight.w700),
      ),
    ),
  );
}

Widget buttonWidget3(
    {required VoidCallback buttonAction,
    required Color buttonColor,
    required String buttonText}) {
  return Material(
    color: buttonColor,
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    elevation: 1,
    child: MaterialButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(
            color: Color(0xffB0B0B0),
            fontSize: 13,
            fontWeight: FontWeight.w700),
      ),
    ),
  );
}

Widget buttonWidget2(
    {required VoidCallback buttonAction,
    required Color buttonColor,
    required String buttonText}) {
  return Material(
    color: buttonColor,
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    elevation: 1,
    child: MaterialButton(
      onPressed: buttonAction,
      child: Text(
        buttonText,
        style: TextStyle(
            color: Color(0xffF6F7FA),
            fontSize: 15,
            fontWeight: FontWeight.w700),
      ),
    ),
  );
}

Widget signUpButtonWidget(
    {required VoidCallback buttonAction,
    required Color buttonColor,
    //  String img,
    required String buttonText}) {
  return Material(
    color: buttonColor,
    borderRadius: BorderRadius.all(Radius.circular(5)),
    elevation: 1,
    child: MaterialButton(
      onPressed: buttonAction,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
//          Image.asset(img),
          SizedBox(
            width: 13.5,
          ),
          Text(
            buttonText,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    ),
  );
}

final RegExp emailvalidatorRegExp =
    RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z0-9,]+\.[a-zA-Z])+");
const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter a valid email";
const String kPassNullError = "Please enter your password";
const String kShortPassError = "Password too short";
const String kMatchPassError = "Passwords don't match";

List<Color> categoryColors = [
  // Color(0xFF3A953C1A),
  Color(0xFF3A953C),
  Color(0xFFBB2F48),
  Color(0xFF3C673D),
  Color(0xFFE75A21),
];

TextFormField buildTextFormField(
    {required bool pass,
    required TextInputType textInputType,
    required String text}) {
  return TextFormField(
    obscureText: pass,
    // onSaved: onSave,
    // onChanged: onChange,
    // validator: validate,
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      fillColor: Color(0xffF0F0F0),
      filled: true,
      hintText: text,
      hintStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Color(0xffAEAEB2),
      ),
    ),
  );
}

TextFormField buildPasswordTextFormField(
    {required Function(String) validate,
    required Function(String) onSave,
    required Function(String) onChange,
    required VoidCallback togglePasswordView,
    required bool pass,
    required TextInputType textInputType,
    required String text}) {
  return TextFormField(
    obscureText: pass,
    //onSaved: onSave,
    onChanged: onChange,
    // validator: validate,
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xFFF7F7F7)),
      ),
      fillColor: Color(0xffF0F0F0),
      filled: true,
      hintText: text,
      suffixIcon: InkWell(
        onTap: togglePasswordView,
        child: Icon(
          pass ? Icons.visibility : Icons.visibility_off_outlined,
          color: Color(0xff999999),
        ),
      ),
      hintStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Color(0xffbababa),
      ),
    ),
  );
}

Text formTextTitle(text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 15,
      color: Color(0xFF10151A),
      fontWeight: FontWeight.w700,
    ),
  );
}
