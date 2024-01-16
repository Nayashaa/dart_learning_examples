import 'dart:async';

import 'package:dart_learning_examples/objects/person.dart';
import 'package:dart_learning_examples/objects/user.dart';
import 'package:dart_learning_examples/streams/stream.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());

  // var susan = Friend()..setName("klye");
  // print(susan.getName()); // Outputs: klye
  // print(susan.name);
  // print(generateNumbers().listen((event) {}));
  generateNumbers().forEach((element) {
    // print(element);
  });

  Future.delayed(Duration(seconds: 5), () {
    // Cancel the subscription after 5 seconds
    // This is just to demonstrate that forEach will keep processing until the stream is done or an error occurs.
    // In this case, we'll cancel the subscription after 5 seconds to terminate the stream.
    generateNumbers().listen(null).cancel();
  });
////////////////////////////
  // StreamSubscription<int> subscription = generateNumbers().listen(
  //   (event) {
  //     print(event);
  //   },
  // );

  // Future.delayed(Duration(seconds: 5), () {
  //   // Cancel the subscription after 2 seconds
  //   subscription.cancel();
  // });
  ///////////////////////////

  // generateNumbers().listen((event) {
  //   (event) {
  //     print(event);
  //   };
  // });

  // generateNumbers().listen((event) {
  //   print(event);
  // });

  // generateNumbers().listen((event) {
  //   print(event);
  // });

  // print(Friend().name);
  // var susan = Friend()..name = "klye";
  // print(susan.name);

  // countDown().listen(
  //   (event) {
  //     print(event);
  //   },
  // );

  // Women(name: "sandea").makeSound();
  // print(PremiumUser(name: "carlie").isActive);
  // print(BlockedUser(template: Blocked(), name: "percy").isActive);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(BlockedUser(template: Blocked(), name: "user").description),
              CountDownWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class CountDownWidget extends StatelessWidget {
  final Stream<int> _countDownStream = countDown();

  CountDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: _countDownStream,
      builder: (context, snapshot) {
        if (snapshot.data == 0) {
          print("i will log you out");
          return const Center(
            child: Text(
              "You're logged out!",
              style: TextStyle(fontSize: 24),
            ),
          );
        } else if (snapshot.hasData) {
          return Center(
            child: Text(
              'You will be logged out in: ${snapshot.data}',
              style: const TextStyle(fontSize: 24),
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
