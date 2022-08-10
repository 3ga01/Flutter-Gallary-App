import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Galary extends StatefulWidget {
  const Galary({Key? key}) : super(key: key);

  @override
  State<Galary> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Galary> {
  int imageIndex = 0;
  List images = [
    "images/p2.jpg",
    "images/p3.jpg",
    "images/p4.jpg",
    "images/p5.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Galary"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images[imageIndex]), fit: BoxFit.fill),
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(spreadRadius: 6, blurRadius: 18)]),
              height: MediaQuery.of(context).size.height / 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (imageIndex <= 0) {
                          imageIndex = 0;
                        } else {
                          imageIndex--;
                        }
                      });
                    },
                    child: Text(
                      "Previous",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          if (imageIndex < (images.length - 1)) {
                            imageIndex++;
                          } else {
                            imageIndex = 0;
                          }
                        });
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(fontSize: 25, color: Colors.red),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
