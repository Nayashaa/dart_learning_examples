import 'package:dart_learning_examples/objects/user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());

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
          child: Text(BlockedUser(template: Blocked(), name: "user").description),
        ),
      ),
    );
  }
}
