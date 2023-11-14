import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Image.asset(
            'lib/images/logo/logo1.png',
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Text(
              'LEVEL UP is present in collaboration with educational\ninstitutions and well-known companies in Indonesia to prepare a superior generation through an experiential learning journey.',
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
