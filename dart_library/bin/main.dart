import 'package:dart_library/dart_library.dart' as dart_library;

// check util library in the lib section for manually created library
import 'package:dart_library/util.dart' ;

// dart math library
import 'dart:math' as math;
main(List<String> arguments) {
  print('Hello world: ${dart_library.returnName()}!');

  var a = 20;
  var b = 10;

print("square root of $a is ${math.sqrt(a)}");

  print("adding $a and $b. The result is ${addNumbers(a, b)}");
}

// dart is a library based application


