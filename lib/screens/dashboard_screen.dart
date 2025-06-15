
import 'package:flutter/material.dart';
import 'attendance_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ana Sayfa')),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          DashboardButton(title: 'Devamsızlıklarım', icon: Icons.qr_code_scanner, onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AttendanceScreen()));
          }),
          DashboardButton(title: 'Sınav Takvimi', icon: Icons.calendar_today, onTap: () {}),
        ],
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  DashboardButton({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50),
              SizedBox(height: 10),
              Text(title, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
