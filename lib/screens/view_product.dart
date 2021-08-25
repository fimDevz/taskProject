import 'package:flutter/material.dart';

class ViewProduct extends StatefulWidget {
  @override
  _ViewProductState createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product View"),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(24.0),
                title: Text("Product 0"),
                leading: Image.asset("assets/img0.jpg"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description"),
                    Text("Rs.1000"),
                  ],
                ),
                trailing: Column(
                  children: [
                    Expanded(child: IconButton(icon: Icon(Icons.delete))),
                    Expanded(child: IconButton(icon: Icon(Icons.edit))),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(24.0),
                title: Text("Product 1"),
                leading: Image.asset("assets/img1.jpg"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description"),
                    Text("Rs.1000"),
                  ],
                ),
                trailing: Column(
                  children: [
                    Expanded(child: IconButton(icon: Icon(Icons.delete))),
                    Expanded(child: IconButton(icon: Icon(Icons.edit))),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(24.0),
                title: Text("Product 3"),
                leading: Image.asset("assets/img3.jpg"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description"),
                    Text("Rs.1000"),
                  ],
                ),
                trailing: Column(
                  children: [
                    Expanded(child: IconButton(icon: Icon(Icons.delete))),
                    Expanded(child: IconButton(icon: Icon(Icons.edit))),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(24.0),
                title: Text("Product 4"),
                leading: Image.asset("assets/img4.jpg"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description"),
                    Text("Rs.1000"),
                  ],
                ),
                trailing: Column(
                  children: [
                    Expanded(child: IconButton(icon: Icon(Icons.delete))),
                    Expanded(child: IconButton(icon: Icon(Icons.edit))),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(24.0),
                title: Text("Product 5"),
                leading: Image.asset("assets/img5.jpg"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description"),
                    Text("Rs.1000"),
                  ],
                ),
                trailing: Column(
                  children: [
                    Expanded(child: IconButton(icon: Icon(Icons.delete))),
                    Expanded(child: IconButton(icon: Icon(Icons.edit))),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(24.0),
                title: Text("Product 6"),
                leading: Image.asset("assets/img6.jpg"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description"),
                    Text("Rs.1000"),
                  ],
                ),
                trailing: Column(
                  children: [
                    Expanded(child: IconButton(icon: Icon(Icons.delete))),
                    Expanded(child: IconButton(icon: Icon(Icons.edit))),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(24.0),
                title: Text("Product 7"),
                leading: Image.asset("assets/img7.jpg"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description"),
                    Text("Rs.1000"),
                  ],
                ),
                trailing: Column(
                  children: [
                    Expanded(child: IconButton(icon: Icon(Icons.delete))),
                    Expanded(child: IconButton(icon: Icon(Icons.edit))),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(24.0),
                title: Text("Product 8"),
                leading: Image.asset("assets/img8.jpg"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description"),
                    Text("Rs.1000"),
                  ],
                ),
                trailing: Column(
                  children: [
                    Expanded(child: IconButton(icon: Icon(Icons.delete))),
                    Expanded(child: IconButton(icon: Icon(Icons.edit))),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(24.0),
                title: Text("Product 9"),
                leading: Image.asset("assets/img9.jpg"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description"),
                    Text("Rs.1000"),
                  ],
                ),
                trailing: Column(
                  children: [
                    Expanded(child: IconButton(icon: Icon(Icons.delete))),
                    Expanded(child: IconButton(icon: Icon(Icons.edit))),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
