import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddBusForm extends StatefulWidget {
  @override
  _AddBusFormState createState() => _AddBusFormState();
}

class _AddBusFormState extends State<AddBusForm> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  TextEditingController _product_name = TextEditingController();
  TextEditingController _product_description = TextEditingController();
  TextEditingController _product_quantity = TextEditingController();
  TextEditingController _product_stock = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: BackButton(

                )),
            imageProfile(),
            SizedBox(
              height: 20,
            ),
            productNameTextField(),
            SizedBox(
              height: 20,
            ),
            productDescriptionTextField(),
            SizedBox(
              height: 20,
            ),
            productQuantityTextField(),
            SizedBox(
              height: 20,
            ),
            productStockTextField(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: 100.0,
          backgroundImage: _imageFile == null
              ? AssetImage("assets/profile.png")
              : FileImage(File(_imageFile.path)),
        ),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.teal,
              size: 28.0,
            ),
          ),
        ),
      ]),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            TextButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  Widget productNameTextField() {
    return TextFormField(
      controller: _product_name,
      validator: (value) {
        if (value.isEmpty) return "Name can't be empty";

        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.teal,
        )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.green,
          width: 2,
        )),
        prefixIcon: Icon(
          CupertinoIcons.bus,
          color: Colors.green,
        ),
        labelText: "Bus Name",
        helperText: "Bus Name can't be empty",
        hintText: "Mianwali Coach Mini Bus",
      ),
    );
  }

  Widget productDescriptionTextField() {
    return TextFormField(
      controller: _product_description,
      validator: (value) {
        if (value.isEmpty) return "Please enter some description";

        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.teal,
        )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.green,
          width: 2,
        )),
        prefixIcon: Icon(
          Icons.description,
          color: Colors.green,
        ),
        labelText: "Bus Description",
        helperText: "Bus Description can't be empty",
        hintText: "32 seats with AC",
      ),
    );
  }

  Widget productQuantityTextField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: _product_quantity,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.teal,
        )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.green,
          width: 2,
        )),
        prefixIcon: Icon(
          Icons.event_seat,
          color: Colors.green,
        ),
        labelText: "Seats",
        helperText: "Not less than Zero",
        hintText: "15",
      ),
    );
  }

  Widget productStockTextField() {
    return TextFormField(
      controller: _product_stock,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.teal,
        )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.green,
          width: 2,
        )),
        prefixIcon: Icon(
          CupertinoIcons.circle_grid_3x3_fill,
          color: Colors.green,
        ),
        labelText: "Product Stock",
        helperText: "Not less than Zero",
        hintText: "2",
      ),
    );
  }
}
