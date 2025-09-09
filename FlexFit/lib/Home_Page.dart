import 'dart:io';

import 'package:flexfit/BestSeller_Page.dart';
import 'package:flexfit/Notification_Page.dart';
import 'package:flexfit/Profile_Page.dart';
import 'package:flexfit/details/Details_Page2.dart';
import 'package:flutter/material.dart';
import 'package:flexfit/details/Details_Page1.dart';
import 'package:flexfit/Favorite_Page.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> drawerItem = [
    {"icon": Icons.person, "name": 'Profile'},
    {"icon": Icons.home_outlined, "name": 'Home Page'},
    {"icon": Icons.shopping_cart, "name": 'My Cart'},
    {"icon": Icons.favorite_border, "name": 'Favorite'},
    {"icon": Icons.fire_truck_outlined, "name": 'Order'},
    {"icon": Icons.notification_add, "name": 'Notification'},
  ];

  final List<Map<String, dynamic>> BrandIcon = [
    {'image': "images/nike.png", 'name': "Nike"},
    {'image': "images/puma.png", 'name': "Puma"},
    {'image': "images/ua.png", 'name': "Under Armour"},
    {'image': "images/adidas.png", 'name': "Adidas"},
    {'image': "images/converse.png", 'name': "Converse"},
  ];
  int selectedIndexItem = 0;

  final List<Map<String, dynamic>> ShoesItem = [
    {'image': "images/shoes1.png", 'name': "Nike Jordan", 'price': "\$493.00"},
    {'image': "images/shoes2.png", 'name': "Nike Air Max", 'price': "\$879.99"},
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth > 600;
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;

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
        backgroundColor: Colors.grey[200],

        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          centerTitle: true,
          title: Column(
            children: [
              Text(
                "Store location",
                style: TextStyle(fontSize: 14, color: Colors.grey[500]),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.location_on, color: Colors.deepOrange, size: 20),
                  SizedBox(width: 4),
                  Text(
                    "Mondolibug, Sylhet",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag_outlined),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color(0xFF2D3B48),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/user.png"),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Hey, 👋",
                  style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
                ),
                SizedBox(height: 10),
                Text(
                  "Harsh Ghetiya",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: drawerItem.length,
                  itemBuilder: (context, index) {
                    final list = drawerItem[index];
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(
                        list['icon'],
                        color: Colors.grey.shade600,
                        size: 20,
                      ),
                      title: Text(
                        list['name'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: screenHeight * 0.030),
                Divider(height: 0.5),
                SizedBox(height: screenHeight * 0.030),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFffb09c),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout_outlined, color: Colors.white, size: 18),
                      SizedBox(width: 15),
                      Text(
                        "Sign Out",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      height: screenHeight * 0.07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(Icons.search, color: Colors.grey, size: 28),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              style: TextStyle(fontSize: isTablet ? 20 : 16),
                              decoration: InputDecoration(
                                hintText: "Looking for shoes",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: isTablet ? 20 : 16,
                                ),
                                border: InputBorder.none,
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(25),
                                        ),
                                      ),
                                      isScrollControlled: true,
                                      builder: (context) => filterSheet(),
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.tune_outlined,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: screenHeight * 0.065,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: BrandIcon.length,
                      itemBuilder: (context, index) {
                        bool isSelected = index == selectedIndexItem;
                        var item = BrandIcon[index];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndexItem = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6.0),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              padding: EdgeInsets.symmetric(
                                horizontal: isSelected ? 10 : 10,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.lightBlueAccent
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    blurRadius: 8,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: isTablet ? 25 : 20,
                                    backgroundColor: Colors.white,
                                    child: Image.asset(item['image']),
                                  ),
                                  if (isSelected) ...[
                                    SizedBox(width: 5),
                                    Text(
                                      item['name'],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: isTablet ? 20 : 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BestsellerPage()),
                      );
                    },
                    child: _sectionTitle("Popular Shoes"),
                  ),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ShoesItem.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isTablet ? 3 : 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      final shoe = ShoesItem[index];
                      return Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => index == 0
                                      ? DetailsPage1()
                                      : DetailsPage2(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 0.8,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      shoe['image'],
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      "Best Seller",
                                      style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: isTablet ? 18 : 14,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      shoe['name'],
                                      style: TextStyle(
                                        fontSize: isTablet ? 22 : 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      shoe['price'],
                                      style: TextStyle(
                                        fontSize: isTablet ? 20 : 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 2,
                            child: Container(
                              height: 40,
                              width: 40,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 28,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),

                  SizedBox(height: 20),

                  _sectionTitle("New Arrival"),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 0.8, color: Colors.grey.shade400),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Best choice",
                                style: TextStyle(
                                  fontSize: isTablet ? 18 : 14,
                                  color: Colors.lightBlueAccent,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Nike Air Jordan",
                                style: TextStyle(
                                  fontSize: isTablet ? 26 : 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "\$849.69",
                                style: TextStyle(fontSize: isTablet ? 22 : 18),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          "images/shoes3.png",
                          width: screenWidth * 0.35,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),

        floatingActionButton: isKeyboardOpen ? null : _customFAB(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: _bottomNavBar(),
      ),
    );
  }

  Widget _circleIcon(IconData icon) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: Icon(icon, color: Colors.black),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "See all",
            style: TextStyle(fontSize: 16, color: Colors.lightBlueAccent),
          ),
        ],
      ),
    );
  }

  Widget _customFAB() {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: [Colors.lightBlueAccent, Colors.blueAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.4),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {},
        child: const Icon(Icons.shopping_bag, size: 28, color: Colors.white),
      ),
    );
  }

  Widget _bottomNavBar() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: Colors.white,
        elevation: 10,
        child: SizedBox(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _bottomNavIcon(Icons.home, 0),
              _bottomNavIcon(Icons.favorite_border, 1),
              const SizedBox(width: 40),
              _bottomNavIcon(Icons.notifications_none, 2),
              _bottomNavIcon(Icons.person_outline, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavIcon(IconData icon, int index) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() => selectedIndex = index);
        if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const FavoritePage1()),
          ).then((_) {
            setState(() => selectedIndex = 0); // Reset to Home when back
          });
        } else if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => NotificationPage()),
          ).then((_) => {setState(() => selectedIndex = 0)});
        } else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ProfilePage()),
          ).then((_) => {setState(() => selectedIndex = 0)});
        }
      },
      child: Icon(
        icon,
        size: 28,
        color: isSelected ? Colors.lightBlueAccent : Colors.grey[600],
      ),
    );
  }
}

Widget filterSheet() {
  String selectedGender = "Men";
  String selectedSize = "US 5.5";
  RangeValues priceRange = const RangeValues(16, 350);

  return StatefulBuilder(
    builder: (context, setState) => Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 55),
              const Text(
                "Filters",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    selectedGender = "";
                    selectedSize = "";
                    priceRange = const RangeValues(16, 350);
                  });
                },
                child: const Text(
                  "RESET",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),

          // Gender
          const Text(
            "Gender",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: ["Men", "Women", "Unisex"].map((gender) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ChoiceChip(
                    label: Center(child: Text(gender)),
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: selectedGender == gender
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    selected: selectedGender == gender,
                    selectedColor: Colors.lightBlueAccent,
                    backgroundColor: Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    showCheckmark: false,
                    onSelected: (val) {
                      setState(() => selectedGender = gender);
                    },
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 25),

          // Size
          const Text(
            "Size",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: ["UK 4.4", "US 5.5", "UK 6.5", "EU 11.5"].map((size) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ChoiceChip(
                    label: Center(child: Text(size)),
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: selectedSize == size ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    selected: selectedSize == size,
                    selectedColor: Colors.lightBlueAccent,
                    backgroundColor: Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    showCheckmark: false,
                    onSelected: (val) {
                      setState(() => selectedSize = size);
                    },
                  ),
                ),
              );
            }).toList(),
          ),

          const SizedBox(height: 25),

          // Price
          const Text(
            "Price",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          RangeSlider(
            values: priceRange,
            min: 16,
            max: 350,
            activeColor: Colors.lightBlueAccent,
            inactiveColor: Colors.grey.shade300,
            divisions: 10,
            labels: RangeLabels(
              "\$${priceRange.start.round()}",
              "\$${priceRange.end.round()}",
            ),
            onChanged: (values) {
              setState(() => priceRange = values);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$${priceRange.start.round()}"),
              Text("\$${priceRange.end.round()}"),
            ],
          ),

          const SizedBox(height: 25),

          // Apply button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {
                Navigator.pop(context); // Close BottomSheet
              },
              child: const Text(
                "Apply",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ),
  );
}
