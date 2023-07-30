import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'Homepage.dart';

class Mydraw extends StatefulWidget {
  const Mydraw({Key? key}) : super(key: key);

  @override
  State<Mydraw> createState() => _MydrawState();
}

class _MydrawState extends State<Mydraw> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 45, 148, 233),
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  accountName: Text('Prajj'),
                  accountEmail: Text('Theprajj25@gmail.com'),
                  currentAccountPicture:
                      Image.asset('assets/Images/drawer.jpg'),
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text('Home', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
                leading: Icon(
                  Icons.man,
                  color: Colors.white,
                ),
                title:
                    Text('My Profile', style: TextStyle(color: Colors.white))),
            ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text('About Us', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              title: Text('Contact Us', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text('LogOut', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
