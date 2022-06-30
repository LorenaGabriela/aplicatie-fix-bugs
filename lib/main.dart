import 'package:flutter/material.dart';

import 'package:fix_bugs_app/home/screens/eighth_screen.dart';
import 'package:fix_bugs_app/home/screens/fifth_screen.dart';
import 'package:fix_bugs_app/home/screens/fourth_screen.dart';
import 'package:fix_bugs_app/home/screens/ninth_screen.dart';
import 'package:fix_bugs_app/home/screens/second_screen.dart';
import 'package:fix_bugs_app/home/screens/seventh_screen.dart';
import 'package:fix_bugs_app/home/screens/sixth_screen.dart';
import 'package:fix_bugs_app/home/screens/tenth_screen.dart';
import 'package:fix_bugs_app/home/screens/third_screen.dart';
import 'package:fix_bugs_app/utils/routes.dart';
import 'package:fix_bugs_app/home/screens/first_screen.dart';
import 'package:fix_bugs_app/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter app',
      home: const HomeScreen(),
      routes: {
        Routes.firstScreen: (context) => const FirstScreen(),
        Routes.secondScreen: (context) => const SecondScreen(),
        Routes.thirdScreen: (context) => const ThirdScreen(),
        Routes.fourthScreen: (context) => FourthScreen(),
        Routes.fifthScreen: (context) => const FifthScreen(),
        Routes.sixthScreen: (context) => const SixthScreen(),
        Routes.seventhScreen: (context) => SeventhScreen(),
        Routes.eighthScreen: (context) => const EighthScreen(),
        Routes.ninthScreen: (context) => const NinthScreen(),
        Routes.tenthScreen: (context) => const TenthScreen(),
      },
    );
  }
}
