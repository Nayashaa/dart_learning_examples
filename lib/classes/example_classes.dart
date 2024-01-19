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
