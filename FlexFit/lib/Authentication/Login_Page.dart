import 'dart:io';

import 'package:flexfit/Authentication/Recovery_Page.dart';
import 'package:flexfit/Authentication/SignUp_Page.dart';
import 'package:flexfit/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          exit(0);
        }
        return false;
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 50),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Hello Again!",
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
                    "Welcome Back You’ve Been Missed!",
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
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "Password",
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
                          hintText: "Enter Your Password",
                          suffixIcon: Icon(Icons.remove_red_eye),
                          contentPadding: EdgeInsets.only(left: 20, top: 12),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => RecoveryPage()),
                        );
                      },
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.grey[500], fontSize: 15),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => HomePage()),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(double.infinity, 60),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/google.png",
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Sign in with google",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => SignupPage()),
                        );
                      },
                      child: Text(
                        "Don’t have an account?",
                        style: TextStyle(color: Colors.grey[500], fontSize: 15),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Sign Up for free",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
