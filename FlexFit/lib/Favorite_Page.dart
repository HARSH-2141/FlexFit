import 'package:flutter/material.dart';

class FavoritePage1 extends StatefulWidget {
  const FavoritePage1({super.key});

  @override
  State<FavoritePage1> createState() => _FavoritePage1State();
}

class _FavoritePage1State extends State<FavoritePage1> {
  final List<Map<String, dynamic>> ShoesItem = [
    {
      'image': "images/shoes1.png",
      'name': "Nike Jordan",
      'price': "\$493.00",
      'icon1': Colors.yellow,
      'icon2': Colors.greenAccent,
      'isFav': false, // ✅ Add favorite state here
    },
    {
      'image': "images/shoes2.png",
      'name': "Nike Air Max",
      'price': "\$879.99",
      'icon1': Colors.lightBlueAccent,
      'icon2': Colors.grey,
      'isFav': false,
    },
    {
      'image': "images/shoes1.png",
      'name': "Nike Jordan",
      'price': "\$493.00",
      'icon1': Colors.blue,
      'icon2': Colors.yellow,
      'isFav': false,
    },
    {
      'image': "images/shoes2.png",
      'name': "Nike Air Max",
      'price': "\$879.99",
      'icon1': Color(0xFF7DDBDA),
      'icon2': Color(0xFF606ACB),
      'isFav': false,
    },
  ];

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth > 600;

    return Scaffold(      backgroundColor: Colors.grey[200],

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: _circleIcon(Icons.arrow_back_ios_new)),
                  Column(
                    children: [
                      Text(
                        "Favorite",
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    icon: isSelected
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border),
                    color: isSelected ? Colors.red : Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: ShoesItem.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final shoe = ShoesItem[index];
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(
                          width: 0.8,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
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
                              vertical: 5,
                            ),
                            child: Text(
                              "Best Seller",
                              style: TextStyle(color: Colors.lightBlueAccent),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 5,
                            ),
                            child: Text(
                              shoe['name'],
                              style: TextStyle(
                                fontSize: isTablet ? 22 : 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 5,
                                ),
                                child: Text(
                                  shoe['price'],
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.03),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: shoe["icon1"],
                                      size: 20,
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    Icon(
                                      Icons.circle,
                                      color: shoe["icon2"],
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 7.5,
                      left: 7.5,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        radius: 13,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              shoe['isFav'] = !shoe['isFav'];
                            });
                          },
                          icon: shoe['isFav']
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ) // filled
                              : Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                          iconSize: 15,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _circleIcon(IconData icon) {
  return CircleAvatar(
    radius: 25,
    backgroundColor: Colors.white,
    child: Icon(icon, color: Colors.black),
  );
}
