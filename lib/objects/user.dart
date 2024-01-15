/////premium user, average user, removed user, famous user.

///// Inheritance
abstract class User {
  final String name;
  bool isActive = true;

  User({required this.name});

  makeSound() {
    print("make generic sound");
  }
}

class PremiumUser extends User {
  PremiumUser({required super.name});
}

////// Polymorphism

class Women extends User {
  Women({required super.name});

  @override
  makeSound() {
    print("this is a womans sound");
    // TODO: implement makeSound
  }
}

///// Composition

class Blocked {
  String title = " This user has been blocked";
}

class BlockedUser extends User {
  final Blocked template;
  final String description;

  // BlockedUser({required super.name});
  BlockedUser({required this.template, required super.name}) : description = template.title;

  @override
  // TODO: implement isActive
  bool get isActive => false;
}

//two different types of calling to the super!


  //   BlockedUser({
  //   required this.template,
  // })  : description = template.title,
  //       super(name: "hlj");

