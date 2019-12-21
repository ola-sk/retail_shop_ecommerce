// final: no change it once it's defined.
// static: no need to create an instance of a class to refer to it.
  //——————————————————————————————————————————————————————————————
// TODO Theme the app
import 'package:retail_shop_ecommerce/location_list.dart';
import 'package:retail_shop_ecommerce/models/location.dart';
import 'package:retail_shop_ecommerce/mocks/mock_location.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

 // This widget is the root of your application.
class MyApp extends StatelessWidget {
  // Alternative if you want to just display the first item from the list of Locations:
  // final Location mockLocation = MockLocation.fetchAny();
final List<Location> mockLocations = MockLocation.fetchAll();
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Retail Shop Prototype',
        home: LocationList(mockLocations),
        theme: ThemeData(primarySwatch: MaterialColor(0xFF371643, swatch))
        );
  }
  
  //——————————————————————————————————————————————————————————————
  //Utility
  //——————————————————————————————————————————————————————————————
  final Map<int, Color> swatch = {
    50:Color.fromRGBO(37, 16, 43, 0.1),
    100:Color.fromRGBO(37, 16, 43, 0.2),
    200:Color.fromRGBO(37, 16, 43, 0.3),
    300:Color.fromRGBO(37, 16, 43, 0.4),
    400:Color.fromRGBO(37, 16, 43, 0.5),
    500:Color.fromRGBO(37, 16, 43, 0.6),
    600:Color.fromRGBO(37, 16, 43, 0.7),
    700:Color.fromRGBO(37, 16, 43, 0.8),
    800:Color.fromRGBO(37, 16, 43, 0.9),
    900:Color.fromRGBO(37, 16, 43, 1),
  };
  //——————————————————————————————————————————————————————————————

}
