import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class activity3 extends StatefulWidget {
  const activity3({Key? key}) : super(key: key);

  @override
  State<activity3> createState() => _activity3State();
}

class _activity3State extends State<activity3> {
  TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 226, 248),
      appBar: AppBar(
        title: Text('Banana Boat'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: screenWidth,
                  height: 600,
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/Images/activity03.jpg',
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 550),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      '₹300/PerHour',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: TextField(
                      controller: _date,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        hintText: 'dd-MM-yyyy',
                        labelText: 'Select Date',
                      ),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                          initialDate: DateTime.now(),
                          context: context,
                          firstDate: DateTime(2023),
                          lastDate: DateTime(2100),
                        );
                        if (pickeddate != null) {
                          setState(() {
                            _date.text =
                                DateFormat('yyyy-MM-dd').format(pickeddate);
                          });
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                        color: Colors.white,
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            focusColor: Colors.white,
                            fillColor: Colors.white,
                            hintText: 'Enter Total Number Of People',
                            labelText: 'Total Participants',
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      width: 150,
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        'Checkout',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Disclaimer - We are not responsible if u live or die, It is upto god.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
