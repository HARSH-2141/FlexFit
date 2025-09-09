import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<Map<String, dynamic>> todaynotItem = [
    {
      'image': "images/t1.png",
      'title': 'We Have New\nProducts With Offers',
      'price1': '\$364.95',
      'price2': '\$260.00',
      'time': '6 min ago',
    },
    {
      'image': "images/t2.png",
      'title': 'We Have New\nProducts With Offers',
      'price1': '\$364.95',
      'price2': '\$260.00',
      'time': '8 min ago',
    },
  ];

  final List<Map<String, dynamic>> yesnotItem = [
    {
      'image': "images/y1.png",
      'title': 'We Have New\nProducts With Offers',
      'price1': '\$364.95',
      'price2': '\$260.00',
      'time': '1 day ago',
    },
    {
      'image': "images/y2.png",
      'title': 'We Have New\nProducts With Offers',
      'price1': '\$364.95',
      'price2': '\$260.00',
      'time': '1 day ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: h * 0.025),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.black,
                        size: w * 0.06,
                      ),
                    ),
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(fontSize: w * 0.06),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        todaynotItem.clear();
                        yesnotItem.clear();
                      });
                    },
                    child: (todaynotItem.isNotEmpty || yesnotItem.isNotEmpty)
                        ? Text(
                            "Clear All",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent,
                            ),
                          )
                        : const SizedBox(),
                  ),
                ],
              ),
            ),
            SizedBox(height: h * 0.02),

            Expanded(
              child: (todaynotItem.isEmpty && yesnotItem.isEmpty)
                  ? Center(
                      child: Text(
                        "No Notifications",
                        style: TextStyle(
                          fontSize: w * 0.045,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Today Section
                          if (todaynotItem.isNotEmpty) ...[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: w * 0.05,
                              ),
                              child: Text(
                                "Today",
                                style: TextStyle(
                                  fontSize: w * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: h * 0.01),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: w * 0.04,
                              ),
                              child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: todaynotItem.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: h * 0.004,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: ListTile(
                                      leading: Container(
                                        width: 70,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 5,
                                              offset: Offset(0, 2),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            todaynotItem[index]['image'],
                                          ),
                                        ),
                                      ),
                                      title: Text(
                                        todaynotItem[index]['title'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.6,
                                        ),
                                      ),

                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: h * 0.01),
                                        child: Row(
                                          children: [
                                            Text(
                                              todaynotItem[index]['price1'],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: w * 0.03),
                                            Text(
                                              todaynotItem[index]['price2'],
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      trailing: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            todaynotItem[index]['time'],
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          SizedBox(height: h * 0.02),
                                          Icon(
                                            Icons.circle,
                                            color: Colors.lightBlueAccent,
                                            size: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],

                          SizedBox(height: h * 0.02),

                          if (yesnotItem.isNotEmpty) ...[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: w * 0.05,
                              ),
                              child: Text(
                                "Yesterday",
                                style: TextStyle(
                                  fontSize: w * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: h * 0.01),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: w * 0.04,
                              ),
                              child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: todaynotItem.length,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: h * 0.004,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: ListTile(
                                      leading: Container(
                                        width: 70,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 5,
                                              offset: Offset(0, 2),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Image.asset(
                                            yesnotItem[index]['image'],
                                          ),
                                        ),
                                      ),
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            yesnotItem[index]['title'],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13.6,
                                            ),
                                          ),
                                          Text(
                                            yesnotItem[index]['time'],
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),

                                      subtitle: Padding(
                                        padding: EdgeInsets.only(top: h * 0.01),
                                        child: Row(
                                          children: [
                                            Text(
                                              yesnotItem[index]['price1'],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: w * 0.03),
                                            Text(
                                              yesnotItem[index]['price2'],
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
