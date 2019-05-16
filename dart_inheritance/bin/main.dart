import 'package:dart_inheritance/dart_inheritance.dart' as dart_inheritance;

main(List<String> arguments) {
  print('Hello world: ${dart_inheritance.calculate()}!');

  var bonni = new Bonni();
  bonni.firstName = "Bonni";
  bonni.lastName = "Mathews";
  bonni.profession = "Programmer";
  bonni.nationality="American";

  bonni.showName();
  bonni.showProfession();
  bonni.showNationality();
}

class Person {
  String firstName, nationality, lastName;
  int age;

  void showName() {
    print(this.firstName + " " + this.lastName);
  }
  void showNationality(){
    print(this.nationality);
  }
}

class Bonni extends Person {
  String profession;
  void showProfession() {
    print(this.profession);
  }

  
  @override
  void showName() {
    // TODO: implement showName
    print("only last name is displayed " +this.lastName);
  }

  @override
  void showNationality() {
    // TODO: implement showNationality
    print("India");
  }
}
