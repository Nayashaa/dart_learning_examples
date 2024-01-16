import 'dart:math';

// Streams with listen to
//streams with async*
//Streams with stream constructors.

Stream<int> myStream() async* {}

Stream<int> generateRandomNumbers() async* {
  yield Random().nextInt(100);
  await Future.delayed(const Duration(seconds: 1));
}

Stream<int> generateRandomNumberstTwo() async* {
  final random = Random();
  yield random.nextInt(100); // Generates a random number between 0 and 99
  await Future.delayed(const Duration(seconds: 1)); // Wait for 1 second before emitting the next number
}

Stream<int> tick({required int ticks}) {
  return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1).take(ticks);
}

Stream<int> countDown() async* {
  for (var i = 5; i > -1; i--) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Stream<int> generateNumbers() async* {
  while (true) {
    await Future.delayed(Duration(seconds: 1));
    yield 1;
  }
}

Stream<int> generateNumbers2() async* {
  yield* Stream.periodic(Duration(seconds: 1), (count) => 1);
}

/// dont remmeber how to handle a stream. 


// Future<Stream<Widget>> widgetStream() async {
//   print(widgetStream());
//   List<Widget> widgetList = [];
//   for (var i = 0; i < 5; i++) {
//     widgetList.add(Container(
//       child: Text("ha"),
//     ));
//   }
//   return await Future.delayed(Duration(seconds: 1));
// }
