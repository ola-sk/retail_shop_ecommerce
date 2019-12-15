import 'package:retail_shop_ecommerce/models/location.dart';
import 'package:retail_shop_ecommerce/models/location_fact.dart';

class MockLocation extends Location {
  static Location fetchAny() {
    return Location(
      name: 'Wheels Wisdom (Car Service and Repairs in Bangalore, Hyderabad, and Kochi)',
      url: 'https://www.wheelswisdom.com/',
      facts: <LocationFact> [
        LocationFact(
          title: 'Lorem Ipsum',
          text: 'Dolor sit amet.',
        ),
        LocationFact(
          title: 'Lorem Ipsum',
          text: 'Dolor sit amet.',
        )
      ]
    );
  }
}