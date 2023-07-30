import 'dart:math';

import 'package:app2/Screens/drawer.dart';
import 'package:app2/utils/rotues.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changeButt = false;

  final _formKey = GlobalKey<FormState>();
  MovetoHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButt = true;
      });

      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.Home);
      setState(() {
        changeButt = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "FoodieMatch",
          style: TextStyle(fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Mydraw(),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SingleChildScrollView(),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    width: 300,
                    height: 260,
                    child: Image.asset(
                      "assets/Images/Mainlogin.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            'Welcome $name',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 24),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.deepPurple)),
                                labelStyle: TextStyle(
                                  color: Colors.deepPurple,
                                ),
                                fillColor: Colors.purple,
                                hintText: 'Enter the name',
                                labelText: 'Username'),
                            validator: (value) {
                              if (value != null && value.isEmpty) {
                                return "yo boy";
                              }
                              return null;
                            },
                          ),
                        ),
                        TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.deepPurple)),
                                labelStyle: TextStyle(
                                  color: Colors.deepPurple,
                                ),
                                hintText: 'Enter the password',
                                labelText: 'Password')),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: InkWell(
                            onTap: (() => MovetoHome((context))),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: (changeButt) ? 40 : 134,
                              height: 40,
                              alignment: Alignment.center,
                              child: (changeButt)
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Title(
                                      color: Color.fromARGB(255, 216, 209, 209),
                                      child: Text(
                                        'Login',
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      )),
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                        Title(
                            color: Colors.grey,
                            child: Text('New user? SignUp')),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
