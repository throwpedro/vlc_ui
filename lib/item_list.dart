import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Media Library',
            style: TextStyle(color: Colors.orange, fontSize: 14.0),
          ),
        ),
        ListTile(
          title: Text('Media Library Folders'),
          subtitle: Text('Select Directories to include in the media library'),
        ),
        CheckboxListTile(
          activeColor: Colors.orange,
          title: Text(
            'Auto Rescan',
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text(
              'Automatically scan device for new or deleted media at application startup'),
          value: isChecked,
          onChanged: (newVal) {
            setState(() {
              isChecked = newVal;
            });
          },
        ),
      ],
    );
  }
}
