import 'package:flexfit/Home_Page.dart';
import 'package:flutter/material.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({super.key});

  @override
  State<RecoveryPage> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 50),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Recovery Password",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  "Please Enter Your Email Address To ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Recieve a Verification Code",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Email Address",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Your Email",
                        contentPadding: EdgeInsets.only(left: 20),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      minimumSize: Size(double.infinity, 60),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
