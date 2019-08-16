import 'package:WhatsApp/models/chat_model.dart';
import 'package:flutter/material.dart';

class ProfileSettingScreen extends StatefulWidget {
  @override
  _ProfileSettingScreenState createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
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
              "Profile",
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                GestureDetector(
                  child: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(dummyData[2].avatarUrl),
                    radius: 80.0,
                  ),
                  onTap: () {},
                ),
                Positioned(
                    child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    child: FloatingActionButton(
                      mini: true,
                      shape: StadiumBorder(),
                      onPressed: null,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 23.0,
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
          ListTile(
            leading:
                IconButton(icon: Icon(Icons.person, color: Color(0xFF6CB3A7))),
            title: Text("Name",
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600])),
            subtitle: Text("Shivam Goyal",
                style: TextStyle(fontSize: 16.0, color: Colors.black)),
            trailing:
                IconButton(icon: Icon(Icons.edit, color: Colors.grey[400])),
            onTap: () {},
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Divider(height: 0.0),
            padding: EdgeInsets.only(left: 80.0),
          ),
          ListTile(
            leading: IconButton(
                icon: Icon(Icons.info_outline, color: Color(0xFF6CB3A7))),
            title: Text("About",
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600])),
            subtitle: Text("Hey there! I'm using WhatsApp.",
                style: TextStyle(fontSize: 16.0, color: Colors.black)),
            onTap: () {},
            trailing:
                IconButton(icon: Icon(Icons.edit, color: Colors.grey[400])),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Divider(height: 0.0),
            padding: EdgeInsets.only(left: 80.0),
          ),
          ListTile(
            leading:
                IconButton(icon: Icon(Icons.phone, color: Color(0xFF6CB3A7))),
            title: Text("Phone",
                style: TextStyle(fontSize: 14.0, color: Colors.grey[600])),
            subtitle: Text("+91 90122 18994",
                style: TextStyle(fontSize: 16.0, color: Colors.black)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
