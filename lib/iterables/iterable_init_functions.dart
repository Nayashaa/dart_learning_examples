import 'package:dart_learning_examples/iterables/iterables.dart';

void iterableGenerateNumbersFunction() {
  var numbers = generateNumbersIterable(3);

  for (var number in numbers) {
    print(number);
  }
}
