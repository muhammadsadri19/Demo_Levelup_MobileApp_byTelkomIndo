import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5, right: 20, left: 20),
          child: Image.asset(
            'images/logo/logo2.png',
            width: 400,
            height: 100,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
            child:
                const Text('Learn, Grow & Contribute With LEVEL UP by Amoeba')
                    .animate()
                    .fadeIn(duration: 600.ms)
                    .then(delay: 200.ms)
                    .slide())
      ],
    );
  }
}
