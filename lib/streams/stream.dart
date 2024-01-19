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

Stream<int> countUp() async* {
  for (var i = 0; i < 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Stream<int> generateNumbers() async* {
  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    yield 1;
  }
}

Stream<int> generateNumbers2() async* {
  yield* Stream.periodic(const Duration(seconds: 1), (count) => 1);
}

/// Futures:
///
///

Future<String> fetchSomeData() async {
  // Some asynchronous operation, e.g., fetching data from a server
  await Future.delayed(const Duration(seconds: 2));
  return "dude";
}

Future<String> writeAString() async {
  await Future.delayed(const Duration(seconds: 5));
  return "I am a string that is written";
}
