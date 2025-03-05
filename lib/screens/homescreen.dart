import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/netwoek_popup.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text('Hi Harry!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                    Text('5 Medicines Left ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return DeviceNotConnectedPopup();
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Icon(Icons.medical_services,size: 35,color: Colors.blue.shade700,),
                  ),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Image.asset('assets/user.png',height: 50,width: 50,),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Thr', style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 10,),
                            Text('Fri', style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 10,),
            
                            Icon(Icons.chevron_left, color: Colors.blue.shade700),
                            SizedBox(width: 10,),
            
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Text('Saturday, Sep 3', style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
            
                            Icon(Icons.chevron_right, color: Colors.blue.shade700),
                            SizedBox(width: 10,),
            
                            Text('Sun', style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 10,),
            
                            Text('Mon', style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                    _buildTimeSection(
                      time: 'Morning 08:00 am',
                      medicines: [
                        _buildMedicineCard(
                          icon: Icons.water_drop,
                          medicineName: 'Calpol 500mg Tablet',
                          instruction: 'Before Breakfast',
                          day: 'Day 01',
                          status: 'Taken',
                          statusColor: Colors.green, iconBgColor: Colors.pink.shade200,
                        ),
                        _buildMedicineCard(
                          icon: Icons.view_headline,
                          medicineName: 'Calpol 500mg Tablet',
                          instruction: 'Before Breakfast',
                          day: 'Day 27',
                          status: 'Missed',
                          statusColor: Colors.red, iconBgColor: Colors.blue.shade200,
                        ),
                      ],
                    ),
                    _buildTimeSection(
                      time: 'Afternoon 02:00 pm',
                      medicines: [
                        _buildMedicineCard(
                          icon: Icons.water_drop,
                          medicineName: 'Calpol 500mg Tablet',
                          instruction: 'After Food',
                          day: 'Day 01',
                          status: 'Snoozed',
                          statusColor: Colors.orange, iconBgColor: Colors.purple.shade200,
                        ),
                      ],
                    ),
                    _buildTimeSection(
                      time: 'Night 09:00 pm',
                      medicines: [
                        _buildMedicineCard(
                          icon: Icons.vaccines,
                          medicineName: 'Calpol 500mg Tablet',
                          instruction: 'Before Sleep',
                          day: 'Day 03',
                          status: 'Left',
                          statusColor: Colors.grey, iconBgColor: Colors.red.shade200,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  static Widget _buildTimeSection({required String time, required List<Widget> medicines}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(time, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        ...medicines,
      ],
    );
  }

  static Widget _buildMedicineCard({
    required IconData icon,
    required String medicineName,
    required String instruction,
    required String day,
    required String status,
    required Color statusColor,
    required Color iconBgColor,

  }) {
    IconData statusIcon;
    switch (status) {
      case 'Taken':
        statusIcon = Icons.notifications_none_rounded;
        break;
      case 'Missed':
        statusIcon = Icons.notifications_none_rounded;
        break;
      case 'Snoozed':
        statusIcon = Icons.notifications_none_rounded;
        break;
      case 'Left':
      default:
        statusIcon = Icons.notifications_none_rounded;
        break;
    }

    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color:iconBgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: Colors.white),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(medicineName, style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text('$instruction', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12)),
                    Spacer(),
                    Text('$day', style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            // decoration: BoxDecoration(
            //   color: statusColor.withOpacity(0.2),
            //   borderRadius: BorderRadius.circular(16),
            // ),
            child: Column(
              children: [
                Icon(statusIcon, color: statusColor, size: 26), // Status icon
                SizedBox(width: 4),
                Text(status, style: TextStyle(color: Colors.grey,fontSize: 10)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
