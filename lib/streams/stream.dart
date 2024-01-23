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

//////////////////////
///

// void main() {
//   // Create a stream of integers
//   Stream<int> originalStream = Stream<int>.fromIterable([
//     1,
//     2,
//     3,
//     4,
//     5
//   ]);

////////////// STREAM TO MAP

//   // Use the map function to square each element in the stream
//   Stream<int> squaredStream = originalStream.map((int value) => value * value);

//   // Subscribe to the transformed stream and listen for events
//   squaredStream.listen((int squaredValue) {
//     print('Squared value: $squaredValue');
//   });
// }

// Stream<int> squaredStream = countUp().map((int value) => value * value);

///////////////// STREAM TO LiST

// void main() async {
//   // Create a stream of integers
//   Stream<int> originalStream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);

//   // Use toList to collect the stream values into a list
//   List<int> resultList = await originalStream.toList();

//   // Print the collected list
//   print('Result List: $resultList');
// }

// void main() {
//   // Create a stream of integers

//   // Use the where method to filter even numbers
//   Stream<int> evenStream = originalStream.where((int number) => number % 2 == 0);

//   // Subscribe to the filtered stream and listen for events
//   evenStream.listen((int evenNumber) {
//     print('Even number: $evenNumber');
//   });
// }
