import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 225, left: 20, right: 20),
          child: Image.asset('images/logo/logo4.png'),
        ),
        const Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Text(
                'By LEVEL UP your producivity we help you achieve higher goals',
                textAlign: TextAlign.center))
      ],
    );
  }
}
