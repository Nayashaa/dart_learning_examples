import 'package:equatable/equatable.dart';

// class Food {
//   bool? isYummy;

//   Food({this.isYummy});
// }

// class Cereal extends Food {
//   Cereal();
// }

//////////////////// so because isYummy is potentially nullable, Cereal doesnt have to call it in its constructor.

class Food {
  bool isYummy;

  Food({required this.isYummy});
}

class Cereal extends Food {
  Cereal(bool parameter) : super(isYummy: parameter);
}

///////////////////////////
///
// class Creatures {
//   bool imortal;

//   Creatures({required this.imortal});
// }

/////////////////////UNNAMED PARAMETERS

// class Creatures {
//   bool imortal;
//   bool isReal;

//   Creatures(this.imortal, this.isReal);
// }

// class Unicorn extends Creatures {
//   Unicorn(isImortal, real) : super(isImortal, real);
// }

/////////////////////NAMED PARAMETERS

// class Creatures {
//   bool imortal;

//   Creatures({required this.imortal});
// }

// class Unicorn extends Creatures {
//   Unicorn(isImortal) : super(imortal: isImortal);
// }

////////////////////////////

// class Creatures {
//   final int lifespan = 10;
//   const Creatures();
// }

// class Unicorn extends Creatures {
//   const Unicorn(int lifespan) : super();
// }

////////////////////////
///
///
///

class Creatures {
  int lifespan;
  Creatures(this.lifespan);
}

class Unicorn extends Creatures {
  Unicorn(super.lifespan);
}

class Dragon extends Creatures {
  Dragon(super.lifespan);
}
