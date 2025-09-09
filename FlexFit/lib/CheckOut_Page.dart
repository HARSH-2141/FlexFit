import 'package:flexfit/Home_Page.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  final double subtotal;
  final double shipping;
  final double totalCost;

  const CheckoutPage({
    Key? key,
    required this.subtotal,
    required this.shipping,
    required this.totalCost,
  }) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    final subtotal = widget.subtotal;
    final shipping = widget.shipping;
    final totalCost = widget.totalCost;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.05),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: screenWidth * 0.07,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.black,
                        size: screenWidth * 0.05,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.18),
                      child: Text(
                        "Checkout",
                        style: TextStyle(fontSize: screenWidth * 0.06),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Contact Information",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.grey.shade300,
                                  ),
                                  child: Icon(
                                    Icons.mail_outline_rounded,
                                    size: 22,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "harshghetiya0@gmail.com",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        "Email",
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.mode_edit_outline_outlined,
                                  size: 22,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.grey.shade300,
                                  ),
                                  child: Icon(
                                    Icons.phone,
                                    size: 22,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "+91 70693 51755",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        "Phone",
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.mode_edit_outline_outlined,
                                  size: 22,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Address",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Newahall St 36, London, 12908 - UK",
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 15,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 25,
                                  color: Colors.grey.shade600,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    "images/map.png",
                                    width: double.infinity,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.lightBlueAccent,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Payment Method",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.grey.shade300,
                                  ),
                                  child: Image.asset("images/payment.png"),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Paypal Card",
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        "**** **** 0690 8520",
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 25,
                                  color: Colors.grey.shade600,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Subtotal
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Subtotal",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  "\$${subtotal.toStringAsFixed(2)}",
                  style: const TextStyle(color: Colors.black87, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Shipping
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Shipping",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  "\$${shipping.toStringAsFixed(2)}",
                  style: const TextStyle(color: Colors.black87, fontSize: 16),
                ),
              ],
            ),
            const Divider(height: 30, thickness: 1),

            // Total Cost
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total Cost",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$${totalCost.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Checkout Button
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    sucessful(context);
                  });
                },
                child: const Text(
                  "Checkout",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void sucessful(BuildContext context) {
  final w = MediaQuery.of(context).size.width;
  final h = MediaQuery.of(context).size.height;
  showDialog(
    context: context,
    builder: (context) {
     return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),

        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: w * 0.06,vertical: h * 0.030),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                  height: h * 0.15,
                  child: Image.asset("images/success.png")
              ),
              SizedBox(height: h * 0.02),

              Text(
                "Your Payment Is\nSuccessful",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: h * 0.03),

              // Back to Shopping Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding:  EdgeInsets.symmetric(vertical: h * 0.018),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> HomePage()));
                  },
                  child:  Text(
                    "Back To Shopping",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      );    },
  );
}
