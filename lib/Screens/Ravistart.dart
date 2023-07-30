import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:app2/utils/rotues.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.Home2);
                        setState(() {});
                      },
                      child: Container(
                          height: 20,
                          child: Text(
                            'Skip',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 260,
                      height: 280,
                      child: Image.asset(
                        'assets/Images/finale.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 340,
                      height: 120,
                      child: Image.asset(
                        'assets/Images/finaleee.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        InkWell(
                            child: Padding(
                          padding: const EdgeInsets.only(
                            left: 50,
                            right: 18,
                            top: 80,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyRoutes.signupp);
                              setState(() {});
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 217, 233, 246),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 130,
                              height: 45,
                              child: Text(
                                'SignUP',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        )),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                              left: 5,
                              top: 80,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, MyRoutes.Loginravi);
                                setState(() {});
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 40),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 217, 233, 246),
                                    borderRadius: BorderRadius.circular(10)),
                                width: 130,
                                height: 45,
                                child: Text(
                                  'Login',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomAppBar(
            color: Colors.transparent,
            child: Text('Copyrights (c) 2023 Qwentech',
                textAlign: TextAlign.center),
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
