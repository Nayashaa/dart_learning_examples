// class Parent {
//   String mom = "stacy";
//   void giveBirth() {
//     print("im giving birth!");
//   }
// }

// class Child extends Parent {
//   Child({Mom? myMom}) : super(mom: myMom);
// }

// class Parent {
//   String mom = "stacy";
//   Parent(this.mom);

//   void giveBirth() {
//     print("I'm giving birth!");
//   }
// }

// class Child extends Parent {
//   Child({String? myMom}) : super(myMom) {
//     if (myMom != null) {
//       mom = myMom;
//     }
//   }
// }

class Parent {
  String mom = "stacy";

  Parent(this.mom);

  void giveBirth() {
    print("I'm giving birth!");
  }
}

class Child extends Parent {
  Child(super.mom, {String? myMom});
}

///////////// example of two constructors:
class Example {
  int a;
  int b;

  Example(this.a, this.b);

  Example.fromA(int a) : this(a, 0);
}

//////////////////////////////// interfaces??

// Define an interface with method signatures
class Flyable {
  void takeOff() {
    // TODO: implement takeOff
  }
  void fly() {
    // TODO: implement fly
  }
  void land() {
    // TODO: implement land
  }
}

//generally interfaces are abstract classes but they dont have to be!

class Horse implements Flyable {
// Missing concrete implementations of 'Flyable.fly', 'Flyable.land', and 'Flyable.takeOff'.
// Try implementing the missing methods, or make the class abstract.
  @override
  void takeOff() {
    // TODO: implement takeOff
  }

  @override
  void land() {
    // TODO: implement land
  }
  @override
  void fly() {
    // TODO: implement fly
  }
}

// Implement the interface in a class
class Bird implements Flyable {
  @override
  void takeOff() {
    print('Bird takes off.');
  }

  @override
  void fly() {
    print('Bird is flying.');
  }

  @override
  void land() {
    print('Bird lands.');
  }
}
