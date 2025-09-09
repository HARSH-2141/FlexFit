import 'package:flexfit/Intro_Page/Intro_Page_3.dart';
import 'package:flutter/material.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
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
                    Image.asset("images/Intro_img2.png"),
                  ],
                ),
                SizedBox(height: 70,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Follow Latest\nStyle Shoes",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "There Are Many Beautiful And Attractive Plants To Your Room",
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
                MaterialPageRoute(builder: (_) => IntroPage3()),
              );
            },
            child: Text(
              "Next",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
