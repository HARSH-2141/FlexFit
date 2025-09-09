import 'package:flexfit/Intro_Page/Intro_Page_2.dart';
import 'package:flutter/material.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200),
          Container(
            height: 639,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Center(
                      child: Text(
                        "NIKE",
                        style: TextStyle(color: Colors.black12, fontSize: 170),
                      ),
                    ),
                    Image.asset("images/Intro_img1.png"),
                  ],
                ),
                SizedBox(height: 70,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Start Journey\nWith Nike",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Smart, Gorgeous & Fashionable Collection",
                    style: TextStyle(fontSize: 22, color: Colors.grey[500]),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(150, 50),
              backgroundColor: Colors.lightBlueAccent,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => IntroPage2()),
              );
            },
            child: Text(
              "Get Started",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
