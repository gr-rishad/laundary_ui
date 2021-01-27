import 'package:flutter/material.dart';
import 'package:laundary_app_ui/screens/order_page_screen.dart';
import 'package:laundary_app_ui/style/home_page_style_scheme.dart';
import 'package:laundary_app_ui/style/login_style_scheme.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            'IRON YARD',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BLESS THIS MESS',
                            style: headingStyle,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'We Pick your clothes and give \nthem a new look',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bannerImg.png')),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Text('SERVICES', style: headingStyle),
            Container(
              height: 200,
              color: Color(0xfff1ffff),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/servicesImg.png')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('IRON ONLY', style: headingStyle),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: openOrderPage,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: gradientStyle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 17),
                              child: Text('Place Order',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('AVAILABILITY : ', style: contentStyle),
                      Text(
                        'AVAILABLE',
                        style: contentStyle.copyWith(color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('We are open from 7.00 AM to 8 PM')
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              color: Color(0xfff1ffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CHECK THE ESTIMATION', style: contentStyle),
                  SizedBox(height: 10),
                  Text('You can check time estimation with price',
                      style: contentStyle)
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Container(
            //       padding: EdgeInsets.all(10),
            //       decoration: BoxDecoration(
            //         gradient: gradientStyle,
            //         shape: BoxShape.circle,
            //       ),
            //       child: Text(
            //         '+',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 30,
            //         ),
            //       ),
            //     )
            //   ],
            // ),
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

  void openOrderPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderPageScreen(),
      ),
    );
  }
}
