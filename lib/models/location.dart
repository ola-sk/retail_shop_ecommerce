import 'package:retail_shop_ecommerce/models/location_fact.dart';

class Location {
  final String name;
  final String url;
  final List<LocationFact> facts;
  Location({this.name, this.url, this.facts});
}
