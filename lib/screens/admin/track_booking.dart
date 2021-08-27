import 'package:flutter/material.dart';

class TrackBookingPage extends StatefulWidget {
  @override
  _TrackBookingPageState createState() => _TrackBookingPageState();
}

class _TrackBookingPageState extends State<TrackBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TRACK BOOKING"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("TRACK BOOKINGS"),
            SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              leading: Image.asset("assets/track.jpg"),
              title: Text("Karachi---Islamabad"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ticket Price: Rs.5000"),
                  Text("Departure Time: 1:00am"),
                  Text("Arrival Time: 4:00pm"),
                ],
              ),
              tileColor: Colors.green.shade100,
              trailing: Column(
                children: [
                  Icon(Icons.add),
                  Icon(Icons.edit),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Image.asset("assets/track.PNG"),
            ),
            SizedBox(
              height: 10,
            ),
            Text("ONGOING"),
          ],
        ),
      ),
    );
  }
}
