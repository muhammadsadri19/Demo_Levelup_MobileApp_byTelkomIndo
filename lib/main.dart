import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:levelup_id/app/modules/auth/signin/view/signin_page.dart';
import 'package:levelup_id/app/modules/auth/signup/view/signup_page.dart';
import 'package:levelup_id/app/modules/intro/onBoarding_page.dart';
import 'package:levelup_id/main_levelup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Level-id',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const OnBoardingPage(),
    );
  }
}
