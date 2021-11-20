import 'package:flutter/material.dart';
import 'package:flutter_application_12/sign_in_up/login.dart';
import 'package:flutter_application_12/router.dart' as router;
import 'package:flutter_application_12/splahscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Health',
      // onGenerateRoute: router.generateRoute,
      // initialRoute: '/',
      home: SplshScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
