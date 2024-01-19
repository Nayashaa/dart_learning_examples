import 'dart:async';

import 'package:dart_learning_examples/streams/stream.dart';
import 'package:flutter/material.dart';

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

class CountUpWidget extends StatelessWidget {
  const CountUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: countUp(),
        builder: (context, snapshot) {
          if (snapshot.data == 0) {
            return const Text("Starting count! ");
          } else if (snapshot.hasData) {
            return Text("The count is : ${snapshot.data}");
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}

class FutureBuilderExample extends StatelessWidget {
  final Future<String> passedFuture;

  const FutureBuilderExample({super.key, required this.passedFuture});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: passedFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(" we have that data! It is ${snapshot.data}");
          } else if (snapshot.hasError) {
            return Text("oh no theres an error ${snapshot.error}");
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// class MyWidget extends StatelessWidget {
//   const MyWidget({Key? myWidgetKey}) : super(key: myWidgetKey);

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class MyWidget extends StatelessWidget {
  const MyWidget({Key? myWidgetKey}) : super(key: myWidgetKey);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
