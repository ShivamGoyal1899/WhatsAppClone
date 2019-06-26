import 'package:flutter/material.dart';
import 'package:LastChat/models/chat_model.dart';
import 'package:LastChat/pages/message_screen.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new AssetImage(dummyData[i].avatarUrl),
                  radius: 26.0,
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].name,
                      style: new TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 17.0),
                    ),
                    new Text(
                      dummyData[i].time,
                      style: new TextStyle(
                          color: Colors.grey[600], fontSize: 13.0),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(
                    dummyData[i].message,
                    style:
                        new TextStyle(color: Colors.grey[600], fontSize: 15.0),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MessageScreen()), // MessageScreen(i)
                  );
                },
              ),
              Container(
                padding: const EdgeInsets.only(right: 10.0),
                child: new Divider(
                  height: 8.0,
                  indent: 83.0,
                ),
              ),
            ],
          ),
    );
  }
}
