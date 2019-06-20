import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/models/call_model.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
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
                  backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
                  radius: 27.0,
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].name,
                      style: new TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 17.0),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 1.0),
                  child:
                  new Text(
                    dummyData[i].time,
                    style:
                        new TextStyle(color: Colors.grey[600], fontSize: 15.0),
                  ),
                ),
                trailing:
                new Icon(
                  Icons.call,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              new Divider(
                height: 8.0,
              ),
            ],
          ),
    );
  }
}
