import 'package:WhatsApp/models/chat_model.dart';
import 'package:flutter/material.dart';

import 'ProfileSettingScreen.dart';

class SettingMainScreen extends StatefulWidget {
  @override
  _SettingMainScreenState createState() => _SettingMainScreenState();
}

class _SettingMainScreenState extends State<SettingMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            child: ListTile(
              contentPadding: EdgeInsets.only(
                  top: 15.0, bottom: 15.0, left: 20.0, right: 20.0),
              leading: CircleAvatar(
                backgroundImage: AssetImage(dummyData[2].avatarUrl),
                radius: 25.0,
              ),
              title: Text(
                "Shivam Goyal",
                style: TextStyle(fontSize: 20.0),
              ),
              subtitle: Text("Hey there! I'm using WhatsApp."),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProfileSettingScreen()), // MessageScreen(i)
                );
              },
            ),
          ),
          Divider(height: 0.0),
          ListTile(
            leading:
                IconButton(icon: Icon(Icons.vpn_key, color: Color(0xFF6CB3A7))),
            title: Text("Account"),
            subtitle: Text("Privacy, security, change number"),
            onTap: () {},
          ),
          ListTile(
            leading:
                IconButton(icon: Icon(Icons.chat, color: Color(0xFF6CB3A7))),
            title: Text("Chats"),
            subtitle: Text("Backup, history, wallpaper"),
            onTap: () {},
          ),
          ListTile(
            leading: IconButton(
                icon: Icon(Icons.notifications, color: Color(0xFF6CB3A7))),
            title: Text("Notifications"),
            subtitle: Text("Message, group & call tones"),
            onTap: () {},
          ),
          ListTile(
            leading: IconButton(
                icon: Icon(Icons.data_usage, color: Color(0xFF6CB3A7))),
            title: Text("Data and storage usage"),
            subtitle: Text("Network usage, auto-download"),
            onTap: () {},
          ),
          ListTile(
            leading: IconButton(
                icon: Icon(Icons.help_outline, color: Color(0xFF6CB3A7))),
            title: Text("Help"),
            subtitle: Text("FAQ, contact us, privacy policy"),
            onTap: () {},
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Divider(),
            padding: EdgeInsets.only(left: 80.0),
          ),
          ListTile(
            leading:
                IconButton(icon: Icon(Icons.people, color: Color(0xFF6CB3A7))),
            title: Text("Invite a friend"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
