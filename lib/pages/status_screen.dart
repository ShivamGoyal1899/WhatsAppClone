import 'package:flutter/material.dart';
import '../models/Status_model.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new ListTile(
                leading: Stack(
                  children: <Widget>[
                    new CircleAvatar(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.grey,
                      backgroundImage: new AssetImage(dummyData[i].avatarUrl),
                      radius: 27.0,
                    ),
                    new Positioned(
                        left: 34.0,
                        top: 34.0,
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          child: new FloatingActionButton(
                            mini: true,
                            shape: StadiumBorder(),
                            onPressed: null,
                            backgroundColor: Theme.of(context).accentColor,
                            child: new Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                        )),
                  ],
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
                  child: new Text(
                    dummyData[i].time,
                    style:
                        new TextStyle(color: Colors.grey[600], fontSize: 15.0),
                  ),
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
                  child: new Text(
                    "Viewed updates",
                    style: new TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                color: Colors.grey[200],
              ),
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new AssetImage(dummyData_1[i].avatarUrl),
                  radius: 27.0,
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData_1[i].name,
                      style: new TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 1.0),
                  child: new Text(
                    dummyData_1[i].time,
                    style: new TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
