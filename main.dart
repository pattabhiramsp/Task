import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/register.dart';
import 'package:task/splash_screen.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'calendar_home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(login());
}

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login UI",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
