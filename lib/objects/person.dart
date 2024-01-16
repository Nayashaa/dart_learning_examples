class Person {
  String name = "name";
  Person();

  void setName(String newName) {
    name = newName;
  }

  String getName() {
    return name;
  }
}

class Friend extends Person {
  Friend();
}

class Family extends Person {
  Family();
}
