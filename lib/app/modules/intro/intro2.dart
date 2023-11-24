import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 300, right: 10, left: 10),
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3))
              ]),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Image.asset(
              'images/logo/logo1.png',
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Text(
              'LEVEL UP is present in collaboration with educational\ninstitutions and well-known companies in Indonesia to prepare a superior generation through an experiential learning journey.',
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
