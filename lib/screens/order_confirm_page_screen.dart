import 'package:flutter/material.dart';
import 'package:laundary_app_ui/screens/track_order_page_screen.dart';
import 'package:laundary_app_ui/style/home_page_style_scheme.dart';
import 'package:laundary_app_ui/style/login_style_scheme.dart';

class OrderConfirmPageScreen extends StatefulWidget {
  @override
  _OrderConfirmPageScreenState createState() => _OrderConfirmPageScreenState();
}

class _OrderConfirmPageScreenState extends State<OrderConfirmPageScreen> {
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
          child: Text('Order Confirmed', style: TextStyle(color: Colors.black)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.black))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/onBoard2.png'))),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Thank you for choosing us!',
                textAlign: TextAlign.center,
                style: headingStyle,
              ),
            ),
            Text(
              'Your Order has been placed and we will pick up your clothes on time!',
              textAlign: TextAlign.center,
              style: contentStyle,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order ID',
                  style: headingStyle,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: gradientStyle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    '1001',
                    style: headingStyle.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Clothes Count', style: headingStyle),
                Text('7', style: headingStyle),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount', style: headingStyle),
                Text('225', style: headingStyle),
              ],
            ),
            divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pick up Date & Time', style: headingStyle),
                Text(
                  'Wednesday,07 Aug,2021.Between 10:00 AM to 12:00 PM',
                  style: contentStyle.copyWith(color: Colors.grey),
                ),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Payment Method', style: headingStyle),
                Text('Cash', style: headingStyle)
              ],
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TrackOrderPageScreen()));
              },
              child: Container(
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(gradient: gradientStyle),
                child: Center(
                  child: Text(
                    'TRACK ORDER',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container divider() {
    return Container(
      height: 1,
      margin: EdgeInsets.symmetric(vertical: 15),
      color: Colors.grey,
    );
  }
}
