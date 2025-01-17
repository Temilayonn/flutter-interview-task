import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:laundro/screens/chats/chat_screen.dart';
import 'package:laundro/screens/description.dart';
import 'package:laundro/screens/home/home_screen.dart';
import 'package:laundro/screens/onboarding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Onboarding(),
    );
  }
}
