import 'package:flutter/material.dart';

import '../models/chat_model.dart';
import '../pages/message_screen.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(dummyData[i].avatarUrl),
              radius: 26.0,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummyData[i].name,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17.0),
                ),
                Text(
                  dummyData[i].time,
                  style: TextStyle(color: Colors.grey[600], fontSize: 13.0),
                ),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                dummyData[i].message,
                style: TextStyle(color: Colors.grey[600], fontSize: 15.0),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MessageScreen()), // MessageScreen(i)
              );
            },
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: Divider(
              height: 8.0,
              indent: 83.0,
            ),
          ),
        ],
      ),
    );
  }
}
