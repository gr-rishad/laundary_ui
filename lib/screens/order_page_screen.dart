import 'package:flutter/material.dart';
import 'package:laundary_app_ui/screens/pick_up_time_page_screen.dart';
import 'package:laundary_app_ui/style/home_page_style_scheme.dart';
import 'package:laundary_app_ui/style/login_style_scheme.dart';

class OrderPageScreen extends StatefulWidget {
  @override
  _OrderPageScreenState createState() => _OrderPageScreenState();
}

class _OrderPageScreenState extends State<OrderPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {}),
        title: Center(
          child: Text(
            'Select Clothes',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.notifications, color: Colors.grey),
              onPressed: () {})
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryWidget("man", "Men", true),
                categoryWidget("girl", "Women", false),
                categoryWidget("child", "Kids", false),
                categoryWidget("oldman", "Others", false),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    clothWidget("cloth1", "Trouser", "15"),
                    clothWidget("cloth2", "Jeans", "10"),
                    clothWidget("cloth3", "Jackets", "5"),
                    clothWidget("cloth4", "Shirt", "10"),
                    clothWidget("cloth5", "T-Shairt", "15"),
                    clothWidget("cloth6", "Blazer", "12"),
                    clothWidget("cloth7", "Coats", "15"),
                    clothWidget("cloth8", "Kurta", "15"),
                    clothWidget("cloth9", "Sweater", "15"),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Your Basket', style: headingStyle),
                    Text("7 Items added", style: contentStyle),
                  ],
                ),
                Text("\$200", style: headingStyle)
              ],
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PickUpTimePageScreen(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: 60,
                decoration: BoxDecoration(
                  gradient: gradientStyle,
                ),
                child: Center(
                  child: Text(
                    'SELECT DATE & TIME',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container clothWidget(String img, String name, String price) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/$img.png'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: headingStyle),
                    Text(
                      '\$$price',
                      style: headingStyle.copyWith(color: Colors.grey),
                    ),
                    Text(
                      'Add Note',
                      style: contentStyle.copyWith(color: Colors.orange),
                    )
                  ],
                ),
                Text("\$45", style: headingStyle),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          gradient: gradientStyle, shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "-",
                          style: headingStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Text(
                          "1",
                          style: headingStyle.copyWith(fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        gradient: gradientStyle,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "+",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.70,
                  height: 1,
                  color: Colors.grey),
            ],
          )
        ],
      ),
    );
  }

  Column categoryWidget(String img, String name, bool isActive) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: (isActive) ? null : Colors.grey.withOpacity(0.3),
              gradient: (isActive) ? gradientStyle : null,
              shape: BoxShape.circle),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/$img.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 2),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
