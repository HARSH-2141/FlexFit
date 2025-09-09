import 'package:flutter/material.dart';

class BestsellerPage extends StatefulWidget {
  const BestsellerPage({super.key});

  @override
  State<BestsellerPage> createState() => _BestsellerPageState();
}

class _BestsellerPageState extends State<BestsellerPage> {
  final List<Map<String, dynamic>> bestShoes = [
    {
      "name": "Nike Air Force",
      "category": "Men's Shoes",
      "price": "\$367.76",
      "image": "images/bs1.png",
      "colors": [Colors.blue, Colors.cyan],
    },
    {
      "name": "Nike Air Max",
      "category": "Men's Shoes",
      "price": "\$254.89",
      "image": "images/bs2.png",
      "colors": [Colors.blue, Colors.brown],
    },
    {
      "name": "Nike Jordan",
      "category": "Men's Shoes",
      "price": "\$367.76",
      "image": "images/bs3.png",
      "colors": [Colors.blue, Colors.green],
    },
    {
      "name": "Nike Air Max",
      "category": "Men's Shoes",
      "price": "\$254.89",
      "image": "images/bs4.png",
      "colors": [Colors.pink, Colors.indigo],
    },
    {
      "name": "Nike Air Force",
      "category": "Men's Shoes",
      "price": "\$367.76",
      "image": "images/bs5.png",
      "colors": [Colors.green, Colors.lightBlueAccent],
    },
    {
      "name": "Nike Air Max",
      "category": "Men's Shoes",
      "price": "\$254.89",
      "image": "images/bs6.png",
      "colors": [Colors.purple, Colors.lightBlueAccent],
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.05),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: h * 0.030,
                      child: Icon(Icons.arrow_back_ios_new, size: h * 0.025),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w * 0.12),
                    child: Text(
                      "Best Seller",
                      style: TextStyle(fontSize: w * 0.06),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.tune, size: h * 0.03),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search, size: h * 0.03),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: h * 0.02),
              Expanded(
                child: GridView.builder(
                  itemCount: bestShoes.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: w < 600 ? 2 : 4, // Responsive columns
                    crossAxisSpacing: w * 0.03,
                    mainAxisSpacing: h * 0.02,
                    childAspectRatio:w < 400 ? 0.85 : 0.80,
                  ),
                  itemBuilder: (context, index) {
                    final shoe = bestShoes[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(w * 0.04),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: w * 0.02,
                            spreadRadius: w * 0.005,
                            offset: Offset(0, h * 0.003),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: w * 0.025),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                shoe["image"],
                                height: h * 0.10,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BEST SELLER",
                                  style: TextStyle(
                                    fontSize: w * 0.035,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade700,
                                  ),
                                ),
                                SizedBox(height: h * 0.005),
                                Text(
                                  shoe["name"],
                                  style: TextStyle(
                                    fontSize: w * 0.045,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: h * 0.005),
                                Text(
                                  shoe["category"],
                                  style: TextStyle(
                                    fontSize: w * 0.035,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: h * 0.015),
                            Row(
                              children: [
                                Text(
                                  shoe["price"],
                                  style: TextStyle(
                                    fontSize: w * 0.040,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: w * 0.1),
                                ...List.generate(
                                  (shoe["colors"] as List<Color>).length,
                                      (colorIndex) => Container(
                                    margin:
                                    EdgeInsets.only(right: w * 0.015),
                                    height: h * 0.02,
                                    width: h * 0.02,
                                    decoration: BoxDecoration(
                                      color: shoe["colors"][colorIndex],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
