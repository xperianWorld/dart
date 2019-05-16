import 'package:dart_inheritence_two/dart_inheritence_two.dart'
    as dart_inheritence_two;

main(List<String> arguments) {
  print('Hello world: ${dart_inheritence_two.calculate()}!');
  var elevated = new ElevatedLocation(23.89, -234.89, 90);
  print(
      "location = ${elevated.latitude} & ${elevated.longitude} at an elevation of ${elevated.elevation}");
}

class Location {
  num latitude, longitude;
//  sugar constructor
  Location(this.latitude, this.longitude);
// named constructor
  Location.init(this.latitude, this.longitude);
}

class ElevatedLocation extends Location {
  num elevation;
  ElevatedLocation(num latitude, num longitude, this.elevation)
      : super(latitude, longitude);
}
