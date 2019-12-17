import 'package:retail_shop_ecommerce/models/location.dart';
import 'package:retail_shop_ecommerce/models/location_fact.dart';

class MockLocation extends Location {
  static final List<Location> items = [
    Location(
        name: 'Wheels Wisdom (Car Service and Repair Centres in India)',
        url: 'https://images.unsplash.com/photo-1523676060187-f55189a71f5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=170&w=1000&q=80',
        facts: <LocationFact>[
          LocationFact(
            title: 'Bangalore',
            text:
                "We're located in a convenient place on a Pine street, next to the bus stop 241, through which busses 7, 21, 35, 41, 64 have their lines. We also offer replacement vehicle service.",
          ),
          LocationFact(
            title: 'Hyderabad',
            text: 'Dolor sit amet.',
          ),
          LocationFact(
            title: 'Kochi',
            text: 'Dolor sit amet.',
          ),
        ]),
    Location(
      name: 'Auto Naprawa (Car Service and Repair centres in Poland)',
      url: 'https://images.unsplash.com/photo-1570071677470-c04398af73ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=170&w=1000&q=80&p-x=1&fp-y=0.74',
      facts: <LocationFact>[
        LocationFact(
          title: 'Warsaw',
          text:
              "We're located in a convenient place on a Indepence street, next to the bus stop 241, through which busses 7, 21, 35, 41, 64 have their lines. We also offer replacement vehicle service.",
        ),
        LocationFact(
          title: 'Poznań',
          text: 'Dolor sit amet.',
        ),
        LocationFact(
          title: 'Białystok',
          text: 'Dolor sit amet.',
        ),
      ],
    ),
    Location(
      name: 'Auto Meister (Car Service and Repair centres in Germany)',
      url: 'https://images.unsplash.com/photo-1574917859804-a997fe309960?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&h=170&w=1000&q=80&crop=edges',
      facts: <LocationFact>[
        LocationFact(
          title: 'Münich',
          text:
              "We're located in a convenient place on a Warngauer street, next to the bus stop 241, through which busses 7, 21, 35, 41, 64 have their lines. We also offer replacement vehicle service.",
        ),
        LocationFact(
          title: 'Berlin',
          text: 'Dolor sit amet.',
        ),
        LocationFact(
          title: 'Ulm',
          text: 'Dolor sit amet.',
        ),
      ],
    ),
  ];
  static Location fetchAny() {
    return MockLocation.items[0];
  }
  static List<Location> fetchAll() {
    return MockLocation.items;
  }
}
