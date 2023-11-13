import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Image.asset('lib/images/monitor.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Text(
            'LEVELUP_ID',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Text(
            'LEVEL UP is present in collaboration with educational\ninstitutions and well-known companies in Indonesia to prepare a superior generation through an experiential learning journey.',
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
