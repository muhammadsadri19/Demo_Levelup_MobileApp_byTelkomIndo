import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 300),
          height: 200,
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3))
              ]),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Image.asset(
              'images/logo/logo2.png',
              width: 400,
              height: 100,
            ),
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
