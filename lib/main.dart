import 'package:app_challengue_boats/challenge_boats/home_boat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() { 
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
     DeviceOrientation.portraitUp,
  ]
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boat Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeChallengeBoat()
    );
  }
}
