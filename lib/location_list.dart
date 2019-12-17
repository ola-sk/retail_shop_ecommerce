// TODO analyse 'flutter/packages/flutter/lib/src/widgets/scroll_view.dart'

import 'package:flutter/material.dart';
import 'package:retail_shop_ecommerce/models/location.dart';
import 'package:retail_shop_ecommerce/styles.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  const LocationList(this.locations);

  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Shop Locations", style: Styles.navBarTitle),
          elevation: 0.5),
      // body: Center(child: |...| in case of ListView.builder adding a shrinkWrap centers the list vertically)
      body: Container(
        child: ListView.builder(
          //shrinkWrap: true,
          itemCount: this.locations.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: _itemThumbnail(this.locations[index]),
              title: _itemTitle(this.locations[index]),
            );
          },
        ),
        // TODO Alignment for the Container doesn't seem to work while child is a ListView.builder()
        alignment: Alignment.center,
      ),
    );
    return scaffold;
  }

/*   @override
  Widget build(BuildContext context) {
    Scaffold scaffold = Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Shop Locations", style: Styles.navBarTitle),
            elevation: 0.5),
        // body: Center(child: |...| in case of ListView.builder adding a shrinkWrap centers the list vertically)
        body: Center(
          child: ListView.builder(
              //shrinkWrap: true,
              itemCount: this.locations.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.all(10.0),
                  leading: _itemThumbnail(this.locations[index]),
                  title: _itemTitle(this.locations[index]),
                );
              }),
        ));
    return scaffold;
  } */

  Widget _itemThumbnail(Location location) {
    assert(location != null);
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(location.url, fit: BoxFit.fitWidth),
    );
  }

  Widget _itemTitle(Location location) {
    assert(location != null);
    return Text('${location.name}', style: Styles.textDefault);
  }
}
