import 'package:flutter/material.dart';

import '../models/call_model.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
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
              radius: 27.0,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  dummyData[i].name,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17.0),
                ),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 1.0),
              child: Text(
                dummyData[i].time,
                style: TextStyle(color: Colors.grey[600], fontSize: 15.0),
              ),
            ),
            trailing: Icon(
              i % 2 == 0 ? Icons.call : Icons.videocam,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Divider(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}
