// Streams have different ways of being consumed: Await for

import 'dart:math';

Stream<int> MyStream() async* {}

class RandomNumbers {
  RandomNumbers();

  Stream<int> generateRandomNumbers({required int ticks}) async* {
    yield Random().nextInt(100);
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> generateRandomNumbers() async* {
  final random = Random();

  yield random.nextInt(100); // Generates a random number between 0 and 99
  await Future.delayed(const Duration(seconds: 1)); // Wait for 1 second before emitting the next number
}

class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1).take(ticks);
  }
}

// and listen!
