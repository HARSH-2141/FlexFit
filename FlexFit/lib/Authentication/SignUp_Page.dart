import 'package:flexfit/Authentication/Login_Page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
          SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Create Account",
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
                  "Let’s Create Account Together",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Your Name",
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
                        hintText: "Enter Your Name",
                        contentPadding: EdgeInsets.only(left: 20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
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
              SizedBox(height: 10),
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
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.grey[500], fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
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
                        MaterialPageRoute(builder: (_) => LoginPage()),
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
                        Image.asset("images/google.png", height: 50, width: 50),
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
              SizedBox(height: 75),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(color: Colors.grey[500], fontSize: 15),
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
    );
  }
}
