import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

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
          child: Text('Learn, Grow & Contribute With LEVEL UP by Amoeba'),
        )
      ],
    );
  }
}
