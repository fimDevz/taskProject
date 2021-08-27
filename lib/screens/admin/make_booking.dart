import 'package:flutter/material.dart';
import 'package:task_project/screens/admin/makeBookingForm.dart';

class MakeBookingPage extends StatefulWidget {
  @override
  _MakeBookingPageState createState() => _MakeBookingPageState();
}

class _MakeBookingPageState extends State<MakeBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAKE BOOKING"),
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
            TextButton.icon(
              icon: Icon(Icons.add),
              label: Text('ADD NEW BOOKINGS'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MakeBookingForm()));
              },
            ),
            SizedBox(
              height: 20,
            ),
            makeBookingListTile(
              asset: "assets/track.jpg",
              arrivalTime: "1:00am",
              departureTime: "4:00pm",
              destination: "Karachi---Rawalpindi",
              price: "Rs.5000",
            ),
            SizedBox(
              height: 10,
            ),
            makeBookingListTile(
              asset: "assets/track.jpg",
              arrivalTime: "1:00am",
              departureTime: "4:00pm",
              destination: "Karachi---Islamabad",
              price: "Rs.5000",
            ),
            SizedBox(
              height: 10,
            ),

            makeBookingListTile(
              asset: "assets/track.jpg",
              arrivalTime: "1:00am",
              departureTime: "4:00pm",
              destination: "Karachi---Islamabad",
              price: "Rs.5000",
            ),
            SizedBox(
              height: 10,
            ),

            makeBookingListTile(
              asset: "assets/track.jpg",
              arrivalTime: "1:00am",
              departureTime: "4:00pm",
              destination: "Karachi---Islamabad",
              price: "Rs.5000",
            ),
          ],
        ),
      ),
    );
  }
}

class makeBookingListTile extends StatelessWidget {
  final String asset;
  final String destination;
  final String price;
  final String departureTime;
  final String arrivalTime;


  const makeBookingListTile({ this.asset, this.destination,  this.price, this.departureTime, this.arrivalTime,
  }) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(20),
      leading: Image.asset(asset),
      title: Text(destination),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Ticket Price: Rs.${price}"),
          Text("Departure Time: ${departureTime}"),
          Text("Arrival Time: ${arrivalTime}"),
        ],
      ),
      tileColor: Colors.green.shade100,
      trailing: Icon(Icons.edit),
    );
  }
}
