import 'package:app2/Screens/drawer.dart';
import 'package:app2/utils/rotues.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RaviLogin extends StatefulWidget {
  const RaviLogin({Key? key}) : super(key: key);

  @override
  State<RaviLogin> createState() => _RaviLoginState();
}

class _RaviLoginState extends State<RaviLogin> {
  bool Change = false;
  bool yo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 233, 246),
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 60,
        backgroundColor: Color.fromARGB(255, 45, 148, 233),
        title: Text(
          'Varun Water Sports',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      drawer: Mydraw(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: 800,
                  height: 260,
                  child: Image.asset('assets/Images/finale.png')),
              Text(
                'Welcome to the waters again!',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 28, horizontal: 30),
                        child: TextFormField(
                          obscureText: (yo) ? false : true,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'enter name',
                            labelText: 'Name',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: (() {
                                  setState(() {
                                    yo = false;
                                  });
                                }),
                                icon: Icon(
                                  Icons.visibility_off,
                                  size: 19,
                                )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'enter pass',
                            labelText: 'password',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 7),
                        child: Row(
                          children: [
                            Text(
                              'Forget Password?',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.end,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 35,
                        ),
                        child: InkWell(
                          onTap: () async {
                            setState(() {
                              Change = true;
                            });

                            await Future.delayed(Duration(seconds: 1));

                            await Navigator.pushNamed(context, MyRoutes.Home2);
                            setState(() {
                              Change = false;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: (Change) ? 50 : 200,
                            alignment: Alignment.center,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 45, 148, 233),
                                borderRadius: BorderRadius.circular(8)),
                            child: (Change)
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    'login',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
