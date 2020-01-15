import 'package:flutter/material.dart';
import '../models/Status_model.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) =>  Column(
            children: <Widget>[
               ListTile(
                leading: Stack(
                  children: <Widget>[
                     CircleAvatar(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Colors.grey,
                      backgroundImage:  AssetImage(dummyData[i].avatarUrl),
                      radius: 27.0,
                    ),
                     Positioned(
                        left: 34.0,
                        top: 34.0,
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          child:  FloatingActionButton(
                            mini: true,
                            shape: StadiumBorder(),
                            onPressed: null,
                            backgroundColor: Theme.of(context).accentColor,
                            child:  Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                        )),
                  ],
                ),
                title:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     Text(
                      dummyData[i].name,
                      style:  TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 17.0),
                    ),
                  ],
                ),
                subtitle:  Container(
                  padding:  EdgeInsets.only(top: 1.0),
                  child:  Text(
                    dummyData[i].time,
                    style:
                         TextStyle(color: Colors.grey[600], fontSize: 15.0),
                  ),
                ),
              ),
               Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: Padding(
                  padding:
                       EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
                  child:  Text(
                    "Viewed updates",
                    style:  TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                color: Colors.grey[200],
              ),
               ListTile(
                leading:  CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage:  AssetImage(dummyData_1[i].avatarUrl),
                  radius: 27.0,
                ),
                title:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                     Text(
                      dummyData_1[i].name,
                      style:  TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
                subtitle:  Container(
                  padding:  EdgeInsets.only(top: 1.0),
                  child:  Text(
                    dummyData_1[i].time,
                    style:  TextStyle(
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
