import 'package:flexfit/Cart_Page.dart';
import 'package:flutter/material.dart';

class DetailsPage2 extends StatefulWidget {
  const DetailsPage2({super.key});

  @override
  State<DetailsPage2> createState() => _DetailsPage2State();
}

class _DetailsPage2State extends State<DetailsPage2> {
  final List<Map<String, dynamic>> ShoesImage = [
    {"image": 'images/shoes1.png'},
    {"image": 'images/shoes2.png'},
    {"image": 'images/shoes3.png'},
  ];

  final List<Map<String, dynamic>> ShoesNum = [
    {"number": '38'},
    {"number": '39'},
    {"number": '40'},
    {"number": '41'},
    {"number": '42'},
    {"number": '43'},
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.06), // top space
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: width * 0.07,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.black,
                        size: width * 0.05,
                      ),
                    ),
                  ),
                  Text("Men’s Shoes", style: TextStyle(fontSize: width * 0.06)),
                  CircleAvatar(
                    radius: width * 0.07,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                      size: width * 0.06,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            // ✅ Image section
            SizedBox(
              height: height * 0.3,
              child: Image.asset("images/shoesD1.png", fit: BoxFit.contain),
            ),
            SizedBox(height: height * 0.02),

            // ✅ Details container
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(width * 0.05),
                  topLeft: Radius.circular(width * 0.05),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.02),
                    Text(
                      "Best Seller",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: width * 0.045,
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    Text(
                      "Nike Air Max",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.08,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    Text(
                      "\$879.99",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.06,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      "Air Jordan is an American brand of basketball\nshoes athletic, casual, and style clothing\nproduced by Nike....",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: height * 0.025),

                    Text(
                      "Gallery",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: width * 0.06,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      children: List.generate(
                        ShoesImage.length,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: width * 0.04),
                          child: Container(
                            height: width * 0.15,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8F9FA),
                              borderRadius: BorderRadius.circular(width * 0.05),
                            ),
                            child: Image.asset(ShoesImage[index]['image']),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.025),

                    // ✅ Size
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Size",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.06,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "EU",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.045,
                              ),
                            ),
                            SizedBox(width: width * 0.04),
                            Text(
                              "US",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.045,
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(width: width * 0.04),
                            Text(
                              "UK",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.045,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02),

                    // ✅ Size options
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        ShoesNum.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            height: width * 0.12,
                            width: width * 0.12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.06),
                              color: selectedIndex == index
                                  ? Colors.lightBlueAccent
                                  : const Color(0xFFF8F9FA),
                              boxShadow: selectedIndex == index
                                  ? [
                                      BoxShadow(
                                        color: Colors.lightBlueAccent
                                            .withOpacity(0.5),
                                        blurRadius: 12,
                                        offset: const Offset(0, 4),
                                      ),
                                    ]
                                  : [],
                            ),
                            child: Center(
                              child: Text(
                                ShoesNum[index]['number'],
                                style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.grey[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: width * 0.045,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.025),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // ✅ Bottom Bar Responsive
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.06,
          vertical: height * 0.02,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(width * 0.05),
            topRight: Radius.circular(width * 0.05),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    fontSize: width * 0.05,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height * 0.005),
                Text(
                  "\$849.69",
                  style: TextStyle(
                    fontSize: width * 0.07,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                minimumSize: Size(width * 0.45, height * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.08),
                ),
                elevation: 0,
              ),
              child: Text(
                "Add To Cart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
