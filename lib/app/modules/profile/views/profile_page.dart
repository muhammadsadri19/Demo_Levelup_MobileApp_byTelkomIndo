import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:levelup_id/app/modules/auth/signin/view/signin_page.dart';
import 'package:levelup_id/app/modules/home/views/condition_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    String? _email = _auth.currentUser!.email;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50.0, left: 5.0, right: 5.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, top: 15.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('images/profile.jpg'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15.0, left: 15.0),
                          child: Text(
                            'Muhammad Sadri',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            '$_email',
                            style: TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _auth.signOut();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SigninPage(),
                            ));
                      },
                      child: Text('Signout'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
