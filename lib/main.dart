import 'package:flutter/material.dart';
import 'package:vlc_ui/item_list.dart';

void main() {
  runApp(
    MaterialApp(
      home: VlcApp(),
      theme: ThemeData(
        unselectedWidgetColor: Colors.orange,
      ),
    ),
  );
}

class VlcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListItem(),
            Divider(),
            ListItem(),
            Divider(),
            ListItem(),
            Divider(),
            ListItem(),
            Divider(),
            ListItem(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
