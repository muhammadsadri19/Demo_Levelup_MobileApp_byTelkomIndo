import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:levelup_id/app/modules/auth/signup/view/signup_page.dart';
import 'package:levelup_id/main_levelup.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  String _email = '';
  String _password = '';

  void _handleSignIn() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _email,
        password: _password,
      );
      print('User Logged In : ${userCredential.user!.email}');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MainLevelup()));
    } catch (e) {
      print('Error During Logged In : $e');
    }
  }

  void _showSignUpDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Sign Up'),
            content: SignupPage(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 13),
            child: Image.asset(
              'images/logo/logotelkom.png',
              height: 50,
              width: 50,
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.email),
                    // Tambahkan dekorasi tambahan sesuai keinginan Anda
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Email';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock),
                    // Tambahkan dekorasi tambahan sesuai keinginan Anda
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Password';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _handleSignIn();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Warna latar belakang tombol
                    onPrimary: Colors.white, // Warna teks pada tombol
                  ),
                  child: Text('Sign In'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _showSignUpDialog();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange, // Customize button color
                    onPrimary: Colors.white, // Customize text color
                  ),
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
