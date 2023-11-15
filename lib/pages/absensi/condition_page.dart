import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConditionPage extends StatefulWidget {
  const ConditionPage({Key? key}) : super(key: key);

  @override
  _ConditionPageState createState() => _ConditionPageState();
}

class _ConditionPageState extends State<ConditionPage> {
  late double height, width;
  String healthCondition = '';
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Absen',
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height * .4,
                child: Image.asset(
                  'lib/images/bg_condition.jpg',
                  width: width,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(9, 21, 107, 1)),
                  child: Container(
                    height: height * .6,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25))),
                    child: Column(
                      children: [
                        Container(
                          width: width,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hallo, Muhammad Sadri',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'How are you today?',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              healthCondition = 'Sehat';
                            });
                          },
                          child: buildRadioButton(
                              'Sehat', healthCondition == 'Sehat'),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              healthCondition = 'Kurang Fit';
                            });
                          },
                          child: buildRadioButton(
                              'Kurang Fit', healthCondition == 'Kurang Fit'),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              healthCondition = 'Sakit';
                            });
                          },
                          child: buildRadioButton(
                              'Sakit', healthCondition == 'Sakit'),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget buildRadioButton(String label, bool isSelected) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: isSelected
              ? Icon(
                  Icons.check,
                  size: 20,
                )
              : null,
        ),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(fontSize: 15),
        ),
      ],
    ),
  );
}
