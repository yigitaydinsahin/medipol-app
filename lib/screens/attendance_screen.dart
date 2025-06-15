
import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Devamsızlıklarım')),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.book),
            title: Text('09:00 - Web Tasarımı'),
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('13:00 - Sosyoloji'),
            trailing: Icon(Icons.cancel, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
