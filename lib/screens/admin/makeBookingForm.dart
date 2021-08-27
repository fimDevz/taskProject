import 'package:flutter/material.dart';

class MakeBookingForm extends StatefulWidget {
  @override
  _MakeBookingFormState createState() => _MakeBookingFormState();
}

class _MakeBookingFormState extends State<MakeBookingForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "Make a New Booking Form",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    width: halfMediaWidth,
                    child: MyTextFormField(
                      hintText: "From",
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: halfMediaWidth,
                    child: MyTextFormField(
                      hintText: "To",
                    ),
                  ),
                ],
              ),
              MyTextFormField(
                hintText: "Price",
                isNumber: true,
              ),
              Row(
                children: [
                  Container(
                    width: halfMediaWidth,
                    child: MyTextFormField(
                      hintText: "Date",
                    ),
                  ),
                  Container(
                    width: halfMediaWidth,
                    child: MyTextFormField(
                      hintText: "Available Seats",
                      isNumber: true,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: halfMediaWidth,
                    child: MyTextFormField(
                      hintText: "Departure Time",
                    ),
                  ),
                  Container(
                    width: halfMediaWidth,
                    child: MyTextFormField(
                      hintText: "Arrival Time",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Save Booking"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isNumber;

  const MyTextFormField({
    Key key,
    this.hintText,
    this.validator,
    this.onSaved,
    this.isNumber = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey.shade200,
        ),
        validator: validator,
        onSaved: onSaved,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      ),
    );
  }
}
