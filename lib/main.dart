import 'package:dart_learning_examples/objects/user.dart';
import 'package:dart_learning_examples/streams/stream.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());

  countDown().listen(
    (event) {
      print(event);
    },
  );

  Women(name: "sandea").makeSound();
  print(PremiumUser(name: "carlie").isActive);
  print(BlockedUser(template: Blocked(), name: "percy").isActive);
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

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: _countDownStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Center(
            child: Text(
              'You will be logged out in: ${snapshot.data}',
              style: TextStyle(fontSize: 24),
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
