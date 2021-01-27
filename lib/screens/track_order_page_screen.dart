import 'package:flutter/material.dart';
import 'package:laundary_app_ui/style/home_page_style_scheme.dart';

class TrackOrderPageScreen extends StatefulWidget {
  @override
  _TrackOrderPageScreenState createState() => _TrackOrderPageScreenState();
}

class _TrackOrderPageScreenState extends State<TrackOrderPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back, color: Colors.black)),
        title: Center(
            child: Text('Track Order', style: TextStyle(color: Colors.black))),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.grey))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order Number 1001', style: headingStyle),
            Text('Order Confirmed. Ready to Pick',
                style: contentStyle.copyWith(color: Colors.grey, fontSize: 15)),
            Container(
                height: 1,
                color: Colors.grey,
                margin: EdgeInsets.symmetric(vertical: 10)),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 13, top: 40),
                  width: 4,
                  height: 400,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    statusWidget('confirmed', 'Confirmed', true),
                    statusWidget('onBoard2', 'Picked Up', false),
                    statusWidget('servicesImg', 'In Process', false),
                    statusWidget('shipped', 'Shipped', false),
                    statusWidget('delivery', 'Delivery', false),
                  ],
                ),
              ],
            ),
            Container(
              height: 1,
              color: Colors.grey,
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.orange),
                  ),
                  child: Text(
                    'Cancel Order',
                    style: contentStyle.copyWith(color: Colors.orange),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.orange),
                  ),
                  child: Text(
                    'My Orders',
                    style: contentStyle.copyWith(color: Colors.orange),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        iconSize: 30,
        onTap: (value) => {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes),
            label: 'Track Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'My Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Container statusWidget(String img, String status, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive ? Colors.orange : Colors.white,
              border: Border.all(
                color: isActive ? Colors.transparent : Colors.orange,
                width: 3,
              ),
            ),
          ),
          SizedBox(width: 50),
          Column(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/$img.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                status,
                style: contentStyle.copyWith(
                  color: isActive ? Colors.orange : Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
