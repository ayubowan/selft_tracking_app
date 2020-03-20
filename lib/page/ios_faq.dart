import 'package:flutter/material.dart';

class IOSFAQScreen extends StatefulWidget {
  @override
  _IOSFAQScreenState createState() => _IOSFAQScreenState();
}

class _IOSFAQScreenState extends State<IOSFAQScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "iOS FAQ",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Center(
        child: Text("iOS FAQ"),
      ),
    );
  }
}
