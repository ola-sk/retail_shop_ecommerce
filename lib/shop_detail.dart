// This file contains the logic and styling of rendering the page about details of a stationary shop
// All enclosed in the 'LocationDetail' class
//——————————————————————————————————————————————————————————————————————————————————————————————————

import 'package:flutter/material.dart';
import 'package:retail_shop_ecommerce/models/location.dart';
import 'package:retail_shop_ecommerce/styles.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  // Whatever value is passed as an argument to a paramater, starting with "this.", of a constructor
  // will automatically be assigned to the member of that class pointed to by parameter.
  // There's no need to create a body of a constructor and assign a member of the class inside the body,
  // neither there's need to use C++ style initialization lists.
  // NEAT!
  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Location of our stationary shop"),
        elevation: 0.5,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        // children attribute accepts a list as it's argument, so _renderFacts(location) needs to be a list.
        children: _renderBody(context, location),
      ),
    );
    return scaffold;
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = List<Widget>();
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = List<Widget>();
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  //———————————————————————————————————————————————————————————————————————
  // SECTIONS
  //———————————————————————————————————————————————————————————————————————

  Widget _sectionTitle(String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(title),
    );
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: Styles.headerLarge,
      ),
    );
  }

  Widget _bannerImage(String src, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(),
      child: Image.network(
        src,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
