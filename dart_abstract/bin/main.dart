import 'package:dart_abstract/dart_abstract.dart' as dart_abstract;

main(List<String> arguments) {
  print('Hello world: ${dart_abstract.calculate()}!');


}

// abstract classes are created using the abstract keyword
abstract class Animal{
  void breathe();
  void makeNoise(){
    print("Animal making noise");
  }
}

class Person implements Animal{
  String name;
  String nationality;


  @override
  void breathe() {
    // TODO: implement breathe
    print("person breathing via nostrils");
  }

  @override
  void makeNoise() {
    // TODO: implement makeNoise
  }
}
