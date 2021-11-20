import 'package:flutter/material.dart';
import 'package:flutter_application_12/dashboard/home_view.dart';
import 'package:flutter_application_12/sign_in_up/login.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({Key key}) : super(key: key);

  @override
  _SplshScreenState createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen> {
  bool isLog = false;

  @override
  Widget build(BuildContext context) {
    //TODO: Do this if ... else ...

    if (!isLog)
      return LoginView();
    else
      Dashboard();
  }
}
