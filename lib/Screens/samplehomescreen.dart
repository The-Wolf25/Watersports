import 'package:app2/Screens/drawer.dart';
import 'package:app2/utils/rotues.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sampl extends StatefulWidget {
  const Sampl({Key? key}) : super(key: key);

  @override
  State<Sampl> createState() => _SamplState();
}

class _SamplState extends State<Sampl> {
  bool Big = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 227, 241),
        appBar: AppBar(
            toolbarHeight: 60,
            actions: [
              Align(
                alignment: Alignment.topRight,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.settings))
            ],
            title: Text(
              'Varun Water Sports',
              textAlign: TextAlign.center,
            )),
        drawer: Mydraw(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: InkWell(
                        onLongPress: () {
                          Future.delayed(Duration(seconds: 3));
                          Big = true;
                          setState(() {});
                        },
                        onTap: () {
                          Big = false;
                          setState(() {});
                        },
                        child: Container(
                          width: (Big) ? 600 : 400,
                          height: (Big) ? 500 : 300,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/Images/tip.jpg'))),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                          onLongPress: () {
                            Future.delayed(Duration(seconds: 3));
                            Big = true;
                            setState(() {});
                          },
                          onTap: () {
                            Big = false;
                            setState(() {});
                          },
                          child: Container(
                            width: (Big) ? 600 : 400,
                            height: (Big) ? 500 : 300,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/Images/Tipturr.jpeg'))),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onLongPress: () {
                              Future.delayed(Duration(seconds: 3));
                              Big = true;
                              setState(() {});
                            },
                            onTap: () {
                              Big = false;
                              setState(() {});
                            },
                            child: Container(
                              width: (Big) ? 600 : 400,
                              height: (Big) ? 500 : 300,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/Images/Tiptur.jpeg'))),
                            ))),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                            onLongPress: () {
                              Future.delayed(Duration(seconds: 3));
                              Big = true;
                              setState(() {});
                            },
                            onTap: () {
                              Big = false;
                              setState(() {});
                            },
                            child: Container(
                              width: (Big) ? 600 : 400,
                              height: (Big) ? 500 : 300,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/Images/Tipturr.jpeg'))),
                            ))),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                          onLongPress: () {
                            Future.delayed(Duration(seconds: 3));
                            Big = true;
                            setState(() {});
                          },
                          onTap: () {
                            Big = false;
                            setState(() {});
                          },
                          child: Container(
                            width: (Big) ? 600 : 400,
                            height: (Big) ? 500 : 300,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/Images/Tiptur.jpeg'))),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: InkWell(
                          onLongPress: () {
                            Future.delayed(Duration(seconds: 3));
                            Big = true;
                            setState(() {});
                          },
                          onTap: () {
                            Big = false;
                            setState(() {});
                          },
                          child: Container(
                            width: (Big) ? 600 : 400,
                            height: (Big) ? 500 : 300,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image:
                                        AssetImage('assets/Images/tip.jpg'))),
                          ),
                        )),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 5,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, MyRoutes.activity);
                                setState(() {});
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                leading: Container(
                                  width: 80,
                                  height: 50,
                                  child: Image.asset(
                                    'assets/Images/fimage01.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                title: Text(
                                  'Kayaking',
                                  style: TextStyle(fontSize: 18),
                                ),
                                trailing: Text(
                                  ' ₹200',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 5,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, MyRoutes.activity2);
                                setState(() {});
                              },
                              child: ListTile(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 8),
                                leading: Container(
                                  width: 80,
                                  height: 50,
                                  child: Image.asset(
                                    'assets/Images/fimage04.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                title: Text(
                                  'Boating',
                                  style: TextStyle(fontSize: 18),
                                ),
                                trailing: Text(
                                  ' ₹150',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ),
                            )),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyRoutes.activity3);
                              setState(() {});
                            },
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              leading: Container(
                                width: 80,
                                height: 50,
                                child: Image.asset(
                                  'assets/Images/fimage03.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(
                                'Banana Boat',
                                style: TextStyle(fontSize: 18),
                              ),
                              trailing: Text(
                                ' ₹300',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyRoutes.activity4);
                              setState(() {});
                            },
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              leading: Container(
                                width: 80,
                                height: 50,
                                child: Image.asset(
                                  'assets/Images/fimage04.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(
                                'Jetski',
                                style: TextStyle(fontSize: 18),
                              ),
                              trailing: Text(
                                ' ₹500',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyRoutes.activity5);
                              setState(() {});
                            },
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              leading: Container(
                                width: 80,
                                height: 50,
                                child: Image.asset(
                                  'assets/Images/fimage01.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(
                                'WindSurfing',
                                style: TextStyle(fontSize: 18),
                              ),
                              trailing: Text(
                                ' ₹400',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyRoutes.activity6);
                              setState(() {});
                            },
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              leading: Container(
                                width: 80,
                                height: 50,
                                child: Image.asset(
                                  'assets/Images/fimage04.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              title: Text(
                                'Speedboat',
                                style: TextStyle(fontSize: 18),
                              ),
                              trailing: Text(
                                ' ₹300',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Opening Soon !',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w200,
                                color: Colors.black,
                                letterSpacing: 3,
                                wordSpacing: 5),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(12.0),
          child: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.call),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: Colors.blue,
          ),
        ));
  }
}
