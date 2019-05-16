import 'package:dart_functions/dart_functions.dart' as dart_functions;

//  its the entry point of the program
main(List<String> arguments) {
  print('Hello world: ${dart_functions.calculate()}!');
  printMyName();
  printMyAge();
  print(helloWorld(getName()) + " and my age is " + helloWorld(getName(), 25));
}

void printMyAge() {
  if (isAgeTrue(24)) {
    print("Your age is 25");
  } else {
    print("your age is not 25");
  }
}

// function_name(){ body}

printMyName() {
  if (whatsMyName().contains("Mukunda")) {
    print("My Name is " + whatsMyName());
  } else {
    print("whats your name?");
  }
}

// implicitly return type is void
String whatsMyName() {
  return getName();
}

isAgeTrue(int myAge) {
  if (myAge == 25) {
    return true;
  } else {
    return false;
  }
}

// => is used for return the value for the method
String getName() => "Mukunda K N";

//Arguments and function parameters
String helloWorld(String word, [int age]) {
  var ageIs = age;
  print("age is $ageIs");

  return "Hello $word";
}

// Lexical support in dart(local variables and global variables) same as java variables scope
