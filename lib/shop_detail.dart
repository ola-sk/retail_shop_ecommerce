import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = Scaffold(
      appBar: AppBar(title: Text("Location of our stationary shop"), elevation: 0.5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _section("First section."),
          _section("Second section."),
          _section("Third section."),
        ],
      ),
    );
    return scaffold;
  }

  Widget _section (String title) {
    return Container(
            decoration: BoxDecoration(color: Colors.deepOrangeAccent[100]),
            child: Text(title),
          );
  }
}
