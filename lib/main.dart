import 'dart:developer';

import 'package:app2/Screens/Homepage.dart';
import 'package:app2/Screens/LoginPage.dart';
import 'package:app2/Screens/Ravi.dart';
import 'package:app2/Screens/Ravistart.dart';
import 'package:app2/Screens/activity1.dart';
import 'package:app2/Screens/activity2.dart';
import 'package:app2/Screens/activity3.dart';
import 'package:app2/Screens/activity4.dart';
import 'package:app2/Screens/activity5.dart';
import 'package:app2/Screens/activity6.dart';
import 'package:app2/Screens/samplehomescreen.dart';
import 'package:app2/Screens/signup.dart';
import 'package:app2/utils/rotues.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyRoutes.Start,
      routes: {
        MyRoutes.start: ((context) => FirstPage()),
        MyRoutes.signupp: ((context) => signup()),
        MyRoutes.Loginravi: ((context) => RaviLogin()),
        MyRoutes.Home2: ((context) => Sampl()),
        MyRoutes.activity: ((context) => activity1()),
        MyRoutes.activity2: ((context) => activity2()),
        MyRoutes.activity3: ((context) => activity3()),
        MyRoutes.activity4: ((context) => activity4()),
        MyRoutes.activity5: ((context) => activity5()),
        MyRoutes.activity6: ((context) => activity6()),
      },
    );
  }
}
