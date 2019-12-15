import 'package:flutter/material.dart';
import 'package:retail_shop_ecommerce/models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;
  
  // whatever value is passed as an argument to a constructor will automatically be assigned to the parameter 
  LocationDetail(this.location);

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

  Widget _section(String title) {
    return Container(
            decoration: BoxDecoration(color: Colors.deepOrangeAccent[100]),
            child: Text(title),
          );
  }
}
