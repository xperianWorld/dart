import 'package:dart_collections/dart_collections.dart' as dart_collections;

main(List<String> arguments) {
  print('Hello world: ${dart_collections.calculate()}!');
  var list = new ListExample();
  list.printLength();
  list.printList();
  // list.reversePrintList();

  // maps are key value pairs
  // keys can't be same
  var winners = {"first": "mukunda", "second": "shruthi", "third": "indu"};

  print(winners["third"]);

// for each iteration
  winners.forEach((k, v) => print(k));
// getting only keys
  var keys = winners.keys;
  print("Keys are $keys");
  // getting only values
  var values = winners.values;
  print("values are $values");

  //
  var mapSecond = {1: "kushal", 2: "upendra", 3: "gori"};

  print("value at map second " + mapSecond[2]);
}

// List is an ordered group of values or variables or objects
// All items in the list are indexed starting from 0 to n

// Maps is dictionary i.e key value pairs
// Keys can be string or numbers

// LIST:
class ListExample {
  var list = ["zero", "one", "two", "three"];
// list of generic types
  var onlyStrings = new List<String>();
  void printLength() {
    print("length of the list is: ${list.length}");
  }

  // list iteration through for loop
  void listIteration(List listItem) {
    for (int i = 0; i < listItem.length; i++) {
      print("list item at $i is ${listItem[i]}");
    }
  }

  void printList() {
    listIteration(onlyStrings);
  }

  // function to add items via add() method
  void addStrings() {
    onlyStrings.add("abcd");
    onlyStrings.add(1234.toString());
  }

  void reversePrintList() {
    for (int i = 1; i < list.length + 1; i++) {
      print("list item at $i is ${list[list.length - i]}");
    }
  }
}
