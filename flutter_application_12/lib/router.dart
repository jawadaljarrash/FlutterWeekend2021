import 'package:flutter/material.dart';
import 'dashboard/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'dashboaed':
      return MaterialPageRoute(builder: (context) => Dashboard());
  }
}
