import 'package:flutter/material.dart';
import 'package:levelup_id/main_levelup.dart';
import 'package:levelup_id/app/modules/intro/intro1.dart';
import 'package:levelup_id/app/modules/intro/intro2.dart';
import 'package:levelup_id/app/modules/intro/intro3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
//Controller Page
  final PageController _controller = PageController();
  bool onlastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onlastPage = (index == 2);
            });
          },
          children: const [
            Intro1(),
            Intro2(),
            Intro3(),
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: const Text('Skip'),
              ),
              SmoothPageIndicator(controller: _controller, count: 3),

              //Next or Done
              onlastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const MainLevelup();
                            },
                          ),
                        );
                      },
                      child: const Text('Done'),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: const Text('Next'),
                    )
            ],
          ),
        )
      ],
    ));
  }
}
