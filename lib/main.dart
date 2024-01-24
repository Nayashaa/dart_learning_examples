import 'package:dart_learning_examples/classes/supers.dart';
import 'package:dart_learning_examples/classes/user.dart';
import 'package:dart_learning_examples/controllers/animated_controller.dart';
import 'package:dart_learning_examples/streams/stream.dart';
import 'package:dart_learning_examples/streams/stream_controller.dart';
import 'package:dart_learning_examples/streams/widget_streams/stream_stateful_widgets.dart';
import 'package:dart_learning_examples/streams/widget_streams/stream_stateless_widgets.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MainApp());

  // List<int> resultList = await countUp().toList();
  // print(resultList);

  Stream<int> evenStream = countUp().where((int number) => number % 2 == 0);

  evenStream.listen((event) {
    print(event);
  });

  // List<int> countList = [];

  // var countStream = countUp().map((event) => countList.add(event));

  // print(countList);

  // Stream<int> squaredStream = countUp().map((int value) => value * value);

  // Stream<int> newStream = countUp().map((int value) => value);

  // newStream.listen((event) {
  //   print("$event");
  // });

  // squaredStream.listen((event) {
  //   print("$event");
  // });
  // squaredStream.listen((int squaredValue) {
  //   print('Squared value: $squaredValue');
  // });

  // var natasha = Creatures(10);
  // var abbas = Unicorn(12);
  // print(abbas.lifespan);
  // print(natasha.lifespan);

  // var silverUnicorn = Unicorn().lifespan;
  // print(silverUnicorn);

  // var myCereal = Cereal(true);
  // print(myCereal.isYummy);

  // streamControllerExample();

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
              // const OneGeneratorWidget(),
              CountDownWidget(),
              const CountUpWidget(),
              FutureBuilderExample(
                passedFuture: writeAString(),
              ),
              MyWidget(
                myWidgetKey: UniqueKey(),
              ),
              const AnimatedWidgetMINE()
            ],
          ),
        ),
      ),
    );
  }
}
