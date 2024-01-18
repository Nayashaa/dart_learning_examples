import 'dart:async';
import 'package:dart_learning_examples/objects/user.dart';
import 'package:dart_learning_examples/streams/stream.dart';
import 'package:dart_learning_examples/streams/stream_controller.dart';
import 'package:dart_learning_examples/streams/stream_init_functions.dart';
import 'package:dart_learning_examples/streams/widget_streams/stream_stateful_widgets.dart';
import 'package:dart_learning_examples/streams/widget_streams/stream_stateless_widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());

  streamControllerExample();

  // iterableGenerateNumbersFunction();

  // generateNumbersFunction();

  // printName();
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
              OneGeneratorWidget(),
              CountDownWidget(),
              CountUpWidget(),
              FutureBuilderExample(
                passedFuture: writeAString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
