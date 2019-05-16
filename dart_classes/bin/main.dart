import 'package:dart_classes/dart_classes.dart' as dart_classes;

main(List<String> arguments) {
  print('Hello world: ${dart_classes.calculate()}!');

// objects are created using the new keyword
  var mic = new Microphone('blue yeti', 'red', 1234);

  print("name ${mic.name}, model ${mic.model} and color ${mic.color}");
  // members are accessed via dot(.) operator
  mic.color = 'blue';
  mic.name = 'yamaha';
  mic.model = 12;

  var mic2 = new Microphone.init();
  print("name ${mic2.name}, model ${mic2.model} and color ${mic2.color}");

  mic.setName = "new name";
  print("name = ${mic.getName}");

  print(mic);
  mic.turnOn();
  print("name ${mic.name}, model ${mic.model} and color ${mic.color}");
  mic.turnOff();
  mic.nameReturn();
}

class Microphone {
  String name;
  String color;
  int model;
// Note: this is not the dart way of creating constructors.
// CHECK BACK LATER FOR ACTUAL CREATION OF CONSTRUCTOR IN DART
  // Microphone(String name, String color, int model) {
  //   this.color = color;
  //   this.name = name;
  //   this.model = model;
  // }

  // Syntactic sugar constructor(the dart way of creating an object)
  Microphone(this.name, this.color, this.model);

  // Named constructor
  Microphone.init() {
    name = "blue yamaha";
    model = 57;
    color = "green";
  }

  void nameReturn() => print(name);

  void turnOn() {
    print(name + " is on");
  }

  void turnOff() {
    print(name + " is off");
  }

  // getters and setters
  // dart has implicit getters and setters since all the member variables are not static
  String get getName => name;
  set setName(String name) => this.name = name;

  // get and set are the keywords in dart language to set and get the variable values
}
