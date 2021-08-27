import 'package:flutter/material.dart';
import 'package:task_project/screens/admin/addBusForm.dart';

class AddBusPage extends StatefulWidget {
  @override
  _AddBusPageState createState() => _AddBusPageState();
}

class _AddBusPageState extends State<AddBusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Bus"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          TextButton.icon(
            icon: Icon(Icons.add),
            label: Text('ADD NEW BOOKINGS'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddBusForm()));
            },
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.all(12.0),
            child: Wrap(
              children: [
                Image.asset("assets/track.jpg"),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Bus 1"),
                          Text("Description"),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => AddBusForm()));
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.all(12.0),
            child: Wrap(
              children: [
                Image.asset("assets/track.jpg"),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Bus 1"),
                          Text("Description"),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
