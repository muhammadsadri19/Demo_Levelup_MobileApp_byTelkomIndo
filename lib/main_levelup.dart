import 'package:flutter/material.dart';
import 'package:levelup_id/models/leaderboard_model.dart';
import 'package:levelup_id/pages/home_page.dart';
import 'package:levelup_id/pages/job_page.dart';
import 'package:levelup_id/pages/leaderboard_page.dart';
import 'package:levelup_id/pages/okr_page.dart';
import 'package:levelup_id/pages/profile_page.dart';

class MainLevelup extends StatefulWidget {
  const MainLevelup({Key? key}) : super(key: key);

  @override
  _MainLevelupState createState() => _MainLevelupState();
}

class _MainLevelupState extends State<MainLevelup> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const JobPage(),
    LeaderboardPage(
      leaderboard: dataLeaderboardList[0],
    ),
    const OkrPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.task), label: 'OKR'),
            BottomNavigationBarItem(
                icon: Icon(Icons.leaderboard), label: 'Leaderboard'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Job'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
