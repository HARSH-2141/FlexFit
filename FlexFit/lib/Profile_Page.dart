import 'package:flexfit/Setting_Page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // Responsive sizes
    final size = MediaQuery.of(context).size;
    final isTablet = size.width > 600;

    double avatarRadius = isTablet ? 100 : 70;
    double fieldHeight = isTablet ? 70 : 60;
    double titleFont = isTablet ? 28 : 20;
    double textFont = isTablet ? 22 : 16;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: isTablet ? 40 : 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: isTablet ? 30 : 25,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: isTablet ? 26 : 22,
                      ),
                    ),
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: isTablet ? 30 : 25,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: isTablet ? 30 : 25,
                    child: IconButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => SettingPage()));},
                      icon: Icon(
                        Icons.settings,
                        size: isTablet ? 30 : 25,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: isTablet ? 30 : 5),

            // Profile Avatar
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      CircleAvatar(
                        radius: avatarRadius,
                        backgroundColor: const Color(0xFFBFE3F2),
                        child: ClipOval(
                          child: Image.asset(
                            "images/user.png",
                            fit: BoxFit.cover,
                            width: avatarRadius * 2,
                            height: avatarRadius * 2,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -15,
                        child: Container(
                          padding: EdgeInsets.all(isTablet ? 10 : 7.5),
                          decoration: const BoxDecoration(
                            color: Color(0xFF81CCEB),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.photo_camera_rounded,
                            color: Colors.white,
                            size: isTablet ? 28 : 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: isTablet ? 25 : 15),

            // Username
            Center(
              child: Text(
                "Harsh Ghetiya",
                style: TextStyle(
                  fontSize: isTablet ? 28 : 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: isTablet ? 30 : 15),

            // Full Name Label
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),

            // Full Name Field
            Container(
              height: fieldHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Center(
                child: TextField(
                  style: TextStyle(fontSize: textFont),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Harsh Ghetiya",
                    hintStyle: TextStyle(fontSize: textFont),
                    contentPadding: const EdgeInsets.only(left: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: isTablet ? 25 : 15),

            // Email Label
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Email Address",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),

            // Email Field
            Container(
              height: fieldHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Center(
                child: TextField(
                  style: TextStyle(fontSize: textFont),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Your Email",
                    hintStyle: TextStyle(fontSize: textFont),
                    contentPadding: const EdgeInsets.only(left: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: isTablet ? 25 : 15),

            // Password Label
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),

            // Password Field
            Container(
              height: fieldHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Center(
                child: TextField(
                  obscureText: true,
                  style: TextStyle(fontSize: textFont),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(fontSize: textFont),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    contentPadding: const EdgeInsets.only(left: 20, top: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
