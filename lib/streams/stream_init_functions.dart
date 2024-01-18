import 'dart:async';

import 'package:dart_learning_examples/iterables/iterables.dart';
import 'package:dart_learning_examples/objects/person.dart';
import 'package:dart_learning_examples/objects/user.dart';
import 'package:dart_learning_examples/streams/stream.dart';

void printName() {
  Women(name: "sandea").makeSound();
  print(PremiumUser(name: "carlie").isActive);
  print(BlockedUser(template: Blocked(), name: "percy").isActive);

  print(Friend().name);
  var susan = Friend()..name = "klye";
  print(susan.name);
}

void generateNumbersFunction() {
  StreamSubscription<int> subscription = generateNumbers().listen(
    (event) {
      print(event);
    },
  );

  Future.delayed(Duration(seconds: 5), () {
    // Cancel the subscription after 2 seconds
    subscription.cancel();
  });
}

void generateNumbersForEach() {
  generateNumbers().forEach((element) {
    // print(element);
  });

  Future.delayed(const Duration(seconds: 5), () {
    // Cancel the subscription after 5 seconds
    // This is just to demonstrate that forEach will keep processing until the stream is done or an error occurs.
    // In this case, we'll cancel the subscription after 5 seconds to terminate the stream.
    generateNumbers().listen(null).cancel();
  });
}

void printName2() {
  var susan = Friend()..setName("klye");
  print(susan.getName()); // Outputs: klye
  print(susan.name);
}
