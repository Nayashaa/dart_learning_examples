import 'package:flutter/material.dart';

class AnimatedWidgetMINE extends StatefulWidget {
  const AnimatedWidgetMINE({super.key});

  @override
  State<AnimatedWidgetMINE> createState() => _AnimatedWidgetMINEState();
}

class _AnimatedWidgetMINEState extends State<AnimatedWidgetMINE> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create an AnimationController with a duration of 2 seconds
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this, // SingleTickerProviderStateMixin is used for vsync
    );

    // Create a Tween to define the range of values for the animation
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    // Dispose of the AnimationController when not needed to free resources
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      // Use the animated value from the controller
      opacity: _animation,
      child: FlutterLogo(size: 200),
    );
  }
}

////////////////STATELESS JUST WITH TWEEN - doesnt work 

// class MyAnimatedWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TweenAnimationBuilder(
//       duration: Duration(seconds: 2),
//       tween: Tween<double>(begin: 0, end: 1),
//       builder: (_, double value, __) {
//         // Use the animated value in the UI
//         return FadeTransition(
//           opacity: value,
//           child: FlutterLogo(size: 200),
//         );
//       },
//     );
//   }
// }

