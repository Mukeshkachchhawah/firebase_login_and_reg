import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Home Page"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text(
          "Home Screen",
          style: TextStyle(fontSize: 59, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
