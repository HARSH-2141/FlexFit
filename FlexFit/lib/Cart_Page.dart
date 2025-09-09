import 'package:flexfit/CheckOut_Page.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<Map<String, dynamic>> cartItems = [
    {
      "image": "images/cartimg1.png",
      "name": "Nike Club Max",
      "price": 64.95,
      "size": "L",
      "quantity": 1,
    },
    {
      "image": "images/cartimg2.png",
      "name": "Nike Air Max 200",
      "price": 64.95,
      "size": "XL",
      "quantity": 1,
    },
    {
      "image": "images/cartimg3.png",
      "name": "Nike Air Max",
      "price": 64.95,
      "size": "XXL",
      "quantity": 1,
    },
    {
      "image": "images/cartimg1.png",
      "name": "Nike Club Max",
      "price": 64.95,
      "size": "L",
      "quantity": 1,
    },
    {
      "image": "images/cartimg2.png",
      "name": "Nike Air Max 200",
      "price": 64.95,
      "size": "XL",
      "quantity": 1,
    },
    {
      "image": "images/cartimg3.png",
      "name": "Nike Air Max",
      "price": 64.95,
      "size": "XXL",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {

    double subtotal = cartItems.fold(
      0,
      (sum, item) => sum + (item['price'] * item['quantity']),
    );
    double shipping = 40.90;
    double totalCost = subtotal + shipping;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isTablet = screenWidth > 600;
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
                        "My Cart",
                        style: TextStyle(fontSize: screenWidth * 0.06),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[100],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Center(
                          child: Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Image.asset(item['image']),
                          ),
                        ),
                        SizedBox(width: 12),
                        SizedBox(
                          width: screenWidth * 0.42,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['name'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "\$${(item['price'] * item['quantity']).toStringAsFixed(2)}",
                                style: const TextStyle(fontSize: 17),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (item['quantity'] > 1) {
                                          item['quantity']--; // reduce quantity
                                        }
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.white,
                                      child: Center(
                                        child: Icon(Icons.remove, size: 10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(item['quantity'].toString()),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        item['quantity']++;
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.lightBlueAccent,
                                      child: Center(
                                        child: Icon(Icons.add, size: 10, color: Colors.white,),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(item['size'], style: TextStyle(fontSize: 17)),
                            SizedBox(height: 10),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  cartItems.removeAt(index);
                                });
                              },
                              icon: Icon(
                                Icons.delete_forever_outlined,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CheckoutPage(
                        subtotal: subtotal,
                        shipping: shipping,
                        totalCost: totalCost,
                      ),
                    ),
                  );
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
