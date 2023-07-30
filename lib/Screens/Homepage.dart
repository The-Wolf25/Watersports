import 'package:app2/Screens/drawer.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:carousel_slider/carousel_controller.dart';

class Hscree extends StatefulWidget {
  const Hscree({Key? key}) : super(key: key);

  @override
  State<Hscree> createState() => _HscreeState();
}

class _HscreeState extends State<Hscree> {
  List tumtak = [
    {"id": 1, "image_yes": 'Assets/Images/ravi.png'},
    {"id": 2, "image_yes": 'Assets/Images/ravi.png'},
    {"id": 3, "image_yes": 'Assets/Images/ravi.png'},
  ];
  // final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 217, 233, 246),
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
        body: Column(
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    print(currentIndex);
                  },
                ),
              ],
            )
          ],
        ));
  }
}
