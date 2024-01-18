import 'dart:async';

// void streamControllerExample() {
//   final poopypants = StreamController<String>();

//   final diffSubscriptionName = poopypants.stream.listen((event) {
//     print(event);
//   });

//   poopypants.sink.add("Natasha");
//   poopypants.sink.add("Karina");
//   poopypants.sink.add("Monk");

//   // Remove the cancel here if you want to keep listening

//   diffSubcriptionName.cancel();
//   poopypants.close();
// }

void streamControllerExample() {
  final poopypants = StreamController<String>();

  final diffSubcriptionName = poopypants.stream.listen((event) {
    print(event);
  });

  poopypants.sink.add("Natasha");
  poopypants.sink.add("Karina");
  poopypants.sink.add("Monk");

  Future.delayed(Duration(seconds: 5), (() {
    diffSubcriptionName.cancel();
  }));

  poopypants.close();
}

////listening is still essential! 