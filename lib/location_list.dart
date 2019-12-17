// TODO analyse 'flutter/packages/flutter/lib/src/widgets/scroll_view.dart'

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retail_shop_ecommerce/models/location.dart';
import 'package:retail_shop_ecommerce/rs_colors.dart';
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
            return _shopListItem(this.locations[index]);
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
      width: 100,
      height: 100,
//    if container already has the width property, then we dont need to create a new widget
//    (we can delete these 3 commented lines)
//      constraints: BoxConstraints.tightFor(width: 100.0),
      child: ClipRRect(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(4)),
          child: Image.network(location.url,
              fit: BoxFit.cover)), //it was BoxFit.fitWidth
    );
  }

  Widget _itemTitle(Location location) {
    assert(location != null);
    return Text('${location.name}', style: Styles.textDefault);
  }

  Widget _shopListItem(Location location) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: RSColor.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: RSColor.shadowColor.withOpacity(0.3),
            offset: const Offset(0, 2),
            blurRadius: 16,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Expanded used to create a flex layout; according to below example, it will divide the
          // flex(i.e. 5) either in row or column and divide the screen according to the
          // flex property
          Expanded(flex: 2, child: _itemThumbnail(location)),
          //SizedBox used to create empty box
          SizedBox(
            width: 4,
          ),
          Expanded(flex: 3, child: _itemTitle(location)),
        ],
      ),
    );
  }
}
