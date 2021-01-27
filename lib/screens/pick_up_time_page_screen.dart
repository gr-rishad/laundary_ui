import 'package:flutter/material.dart';
import 'package:laundary_app_ui/screens/order_confirm_page_screen.dart';
import 'package:laundary_app_ui/style/home_page_style_scheme.dart';
import 'package:laundary_app_ui/style/login_style_scheme.dart';

class PickUpTimePageScreen extends StatefulWidget {
  @override
  _PickUpTimePageScreenState createState() => _PickUpTimePageScreenState();
}

class _PickUpTimePageScreenState extends State<PickUpTimePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back, color: Colors.black)),
        title: Center(
          child:
              Text('Select Date & Time', style: TextStyle(color: Colors.black)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.grey))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pick Up Date', style: headingStyle),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dateWidget("Wed", "07 Aug", true),
                  dateWidget("Thu", "08 Aug", false),
                  dateWidget("Fri", "09 Aug", false),
                  dateWidget("Sat", "10 Aug", false),
                  dateWidget("Mon", "11 Aug", false),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(height: 1, color: Colors.grey),
            Text(
              'Pick Up Time',
              style: headingStyle,
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", true),
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", false)
                ],
              ),
            ),
            SizedBox(height: 30),
            Text('Delivery Date', style: headingStyle),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dateWidget("Wed", "09 Aug", true),
                  dateWidget("Thu", "10 Aug", false),
                  dateWidget("Fri", "11 Aug", false),
                  dateWidget("Sat", "12 Aug", false),
                  dateWidget("Mon", "13 Aug", false),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(height: 1, color: Colors.grey),
            Text(
              'Delivery Time',
              style: headingStyle,
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", true),
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", false)
                ],
              ),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount Payable', style: headingStyle),
                Text('\$225', style: headingStyle)
              ],
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderConfirmPageScreen()));
              },
              child: Container(
                //width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                height: 60,
                decoration: BoxDecoration(
                  gradient: gradientStyle,
                ),
                child: Center(
                  child: Text('PLACE ORDER',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container timeWidget(String time, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isActive ? Colors.orange : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Text(
            time,
            style: contentStyle.copyWith(
                color: (isActive) ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }

  Container dateWidget(String day, String date, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: isActive ? Colors.orange : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Text(day,
              style: contentStyle.copyWith(
                  color: isActive ? Colors.white : Colors.black)),
          Text(date,
              style: contentStyle.copyWith(
                  color: isActive ? Colors.white : Colors.black, fontSize: 15)),
        ],
      ),
    );
  }
}
