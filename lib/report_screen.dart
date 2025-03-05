import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Report",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      // Top shadow
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 0.2,
                        blurRadius: 5,
                        offset: Offset(0, -2),
                      ),
                      // Bottom shadow
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 0.1,
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today's Report",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.blue[700],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.blue[700],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Taken",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.blue[700],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Missed",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.blue[700],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Snoozed",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 105,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      // Top shadow
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 0.2,
                        blurRadius: 5,
                        offset: Offset(0, -2),
                      ),
                      // Bottom shadow
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 0.1,
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Check Dashboard",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              "Here you will find everything related to your active and past medicines.",
                              maxLines: 2,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            )),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              "assets/dashboard_icon.png",
                              height: 52,
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Check History",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue[700],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "SUN",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.blue[700],
                          ),
                          child: Center(
                              child: Text(
                            "1",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "MON",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.blue.shade50,
                          ),
                          child: Center(
                              child: Text(
                            "2",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "TUE",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.blue.shade50,
                          ),
                          child: Center(
                              child: Text(
                            "3",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "WED",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.blue.shade50,
                          ),
                          child: Center(
                              child: Text(
                            "4",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "THU",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.blue.shade50,
                          ),
                          child: Center(
                              child: Text(
                            "5",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "FRI",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.blue.shade50,
                          ),
                          child: Center(
                              child: Text(
                            "6",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          )),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Morning 08:00 am",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.water_drop, color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Calpol 500mg Tablet",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text('Before Breakfast',
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 12)),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Day 01',
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 12)),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        child: Column(
                          children: [
                            Icon(Icons.notifications_none_sharp,
                                color: Colors.green, size: 26), // Status icon
                            SizedBox(width: 4),
                            Text("Taken",
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple.shade100,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.water_drop, color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Calpol 500mg Tablet",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text('Before Breakfast',
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 12)),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Day 27',
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 12)),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        child: Column(
                          children: [
                            Icon(Icons.notifications_none_sharp,
                                color: Colors.red, size: 26), // Status icon
                            SizedBox(width: 4),
                            Text("Missed",
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Afternoon 02:00 pm",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.water_drop, color: Colors.white),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Calpol 500mg Tablet",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                Text('After Food',
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 12)),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Day 01',
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 12)),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        child: Column(
                          children: [
                            Icon(Icons.notifications_none_sharp,
                                color: Colors.orange, size: 26), // Status icon
                            SizedBox(width: 4),
                            Text("Snoozed",
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
