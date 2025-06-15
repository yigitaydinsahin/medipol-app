
import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(MedipolApp());
}

class MedipolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medipol App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
