// TODO Implement this library.
//
//
Iterable<int> generateNumbersIterable(int count) sync* {
  for (int i = 0; i < count; i++) {
    yield i;
  }
}

////////////// MOVE NEXT
void next() {
  Iterable<int> numbers = [
    1,
    2,
    3,
    4,
    5
  ];
  Iterator<int> iterator = numbers.iterator;

  while (iterator.moveNext()) {
    print(iterator.current); // Access the current element
  }
}
////////////////// FOR-IN;

void forIN() {
  Iterable<int> numbers = [
    1,
    2,
    3,
    4,
    5
  ];

  for (int number in numbers) {
    print(number);
  }
}

Iterable<int> numbers = [
  1,
  2,
  3,
  4,
  5
];

// where:

// Filters elements based on a condition.

Iterable<int> evenNumbers = numbers.where((int number) => number % 2 == 0);

// any:

// Checks if any element satisfies a given condition.

bool hasEvenNumbers = numbers.any((int number) => number % 2 == 0);

// every:

// Checks if every element satisfies a given condition.

bool allPositive = numbers.every((int number) => number > 0);

// toList and toSet:

// Converts the iterable to a list or a set.

List<int> numberList = numbers.toList();
Set<int> numberSet = numbers.toSet();

// reduce:
//ACC MEANS ACCUMULATOR!
// Combines elements of the iterable using a provided function.

int sum = numbers.reduce((int acc, int number) => acc + number);

// fold:

// Similar to reduce, but allows specifying an initial value.

int sum2 = numbers.fold(0, (int acc, int number) => acc + number);
