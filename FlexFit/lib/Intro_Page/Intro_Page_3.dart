import 'package:flexfit/Authentication/Login_Page.dart';
import 'package:flexfit/Intro_Page/Intro_Page_1.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
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
                    Image.asset("images/Intro_img3.png"),
                  ],
                ),
                SizedBox(height: 70,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Summer Shoes\nNike 2022",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Amet Minim Lit Nodeseru Saku Nandu sit Alique Dolor",
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
                MaterialPageRoute(builder: (_) => LoginPage()),
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
