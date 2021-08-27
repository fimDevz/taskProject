import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_project/screens/admin/invoice.dart';
import 'package:task_project/screens/admin/manage_cancellantion_of_seat.dart';
import 'package:task_project/screens/admin/payment_method.dart';
import 'package:task_project/screens/admin/refund_detail.dart';
import 'package:task_project/screens/admin/track_booking.dart';
import 'package:task_project/screens/admin/user_detail.dart';
import 'package:task_project/screens/profile.dart';

import 'make_booking.dart';

class BookingMainPage extends StatefulWidget {
  @override
  _BookingMainPageState createState() => _BookingMainPageState();
}

class _BookingMainPageState extends State<BookingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOOKING"),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("My Profile",style: TextStyle(fontSize: 20,color: Colors.green),),
                    IconButton(
                        alignment: Alignment.center,
                        icon: Icon(Icons.person,), onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyProfile()),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to Mianwali"
                      "\nCoach Service Booking",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Icon(
                      CupertinoIcons.bus,
                      color: Colors.green,
                      size: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Make Booking",
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Image.asset("assets/track.jpg"),
                              ListTile(
                                title: Text("Heading1"),
                                subtitle: Text("Subtitle1"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MakeBookingPage()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Track Booking",
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Image.asset("assets/seat.jpg"),
                              ListTile(
                                title: Text("Heading1"),
                                subtitle: Text("Subtitle1"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrackBookingPage()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Invoices",
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Image.asset(
                                "assets/invoice.jpg",
                                height: 160,
                              ),
                              ListTile(
                                title: Text("Heading1"),
                                subtitle: Text("Subtitle1"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InvoicePage()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Manage cancellation of seats",
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Image.asset("assets/cancel.jpg"),
                              ListTile(
                                title: Text("Heading1"),
                                subtitle: Text("Subtitle1"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ManageCancellationPage()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Refund details",
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Image.asset("assets/invoice.jpg"),
                              ListTile(
                                title: Text("Heading1"),
                                subtitle: Text("Subtitle1"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RefundDetailPage()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "User details",
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Image.asset("assets/user.jpg"),
                              ListTile(
                                title: Text("Heading1"),
                                subtitle: Text("Subtitle1"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserDetailPage()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Payment method",
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160,
                        child: Card(
                          child: Wrap(
                            children: [
                              Image.asset("assets/money.jpg"),
                              ListTile(
                                title: Text("Heading1"),
                                subtitle: Text("Subtitle1"),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentPage()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
