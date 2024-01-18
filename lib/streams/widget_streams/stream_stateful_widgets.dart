import 'dart:async';

import 'package:dart_learning_examples/streams/stream.dart';
import 'package:flutter/material.dart';

class OneGeneratorWidget extends StatefulWidget {
  const OneGeneratorWidget({super.key});

  @override
  _OneGeneratorWidgetState createState() => _OneGeneratorWidgetState();
}

class _OneGeneratorWidgetState extends State<OneGeneratorWidget> {
  late StreamSubscription<int> _subscription;

  @override
  void initState() {
    super.initState();

    _subscription = generateNumbers().listen(
      (event) {
        print(event);
      },
    );

    Future.delayed(const Duration(seconds: 10), () {
      // Cancel the subscription after 2 seconds
      _subscription.cancel();
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Your widget UI code here
    return Container();
  }
}
