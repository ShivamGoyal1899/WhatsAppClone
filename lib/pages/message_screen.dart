import 'package:flutter/material.dart';
import '../models/chat_model.dart';

var list = ["one", "two", "three", "four"];

enum MoreMenu { view_contact, media, search, mute, wallpaper, more }

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar:  AppBar(
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage:  AssetImage(dummyData[3].avatarUrl),
              radius: 18.0,
            ),
             Column(
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.only(top: 10.0, left: 8.0),
                  child:  Text(
                    dummyData[3].name,
                    style:  TextStyle(fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 3.0, right: 50.0),
                  child:  Text(
                    "online",
                    style:  TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: <Widget>[
           IconButton(
            icon:  Icon(
              Icons.videocam,
              color: Colors.white,
            ),
            tooltip: "Video call",
            onPressed: () {},
          ),
           IconButton(
            icon:  Icon(
              Icons.call,
              color: Colors.white,
            ),
            tooltip: "Voice call",
            onPressed: () {},
          ),
           PopupMenuButton<MoreMenu>(
            padding:  EdgeInsets.all(0.0),
            tooltip: "More options",
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MoreMenu>>[
                   PopupMenuItem<MoreMenu>(
                    value: MoreMenu.view_contact,
                    child: Text('View contact'),
                  ),
                   PopupMenuItem<MoreMenu>(
                    value: MoreMenu.media,
                    child: Text('Media'),
                  ),
                   PopupMenuItem<MoreMenu>(
                    value: MoreMenu.search,
                    child: Text('Search'),
                  ),
                   PopupMenuItem<MoreMenu>(
                    value: MoreMenu.mute,
                    child: Text('Mute notifications'),
                  ),
                   PopupMenuItem<MoreMenu>(
                    value: MoreMenu.wallpaper,
                    child: Text('Wallpaper'),
                  ),
                   PopupMenuItem<MoreMenu>(
                    value: MoreMenu.more,
                    child: ListTile(
                      title: Text("More"),
                      contentPadding:  EdgeInsets.all(0.0),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                ],
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
             Padding(
              padding:  EdgeInsets.only(
                top: 8.0,
                left: 8.0,
                right: 8.0,
              ),
              child:  Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                   Flexible(
                    flex: 1,
                    child:  Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all( Radius.circular(5.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                           Text(
                            "Hi,\nLast chance to RSVP for the Treasure Hunt... Don't hesitate, come play!",
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding:  EdgeInsets.only(
                right: 8.0,
                top: 8.0,
                left: 8.0,
              ),
              child:  Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                   Flexible(
                    flex: 1,
                    child:  Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all( Radius.circular(5.0)),
                        color: Colors.lightGreenAccent[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                           Text(
                            "We have a few employees seeking opportunities. They are currently working at MOP in sales support and marketing team.",
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding:  EdgeInsets.only(
                top: 8.0,
                left: 8.0,
                right: 8.0,
              ),
              child:  Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                   Flexible(
                    flex: 1,
                    child:  Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all( Radius.circular(5.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                           Text(
                            "What roles they are seeking?",
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding:  EdgeInsets.only(
                right: 8.0,
                top: 3.0,
                left: 8.0,
              ),
              child:  Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                   Flexible(
                    flex: 1,
                    child:  Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all( Radius.circular(5.0)),
                        color: Colors.lightGreenAccent[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                           Text(
                            "Support",
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding:  EdgeInsets.only(
                right: 8.0,
                top: 3.0,
                left: 8.0,
              ),
              child:  Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                   Flexible(
                    flex: 1,
                    child:  Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all( Radius.circular(5.0)),
                        color: Colors.lightGreenAccent[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                           Text(
                            "Graphic designer",
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding:  EdgeInsets.only(
                top: 8.0,
                left: 8.0,
                right: 8.0,
              ),
              child:  Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                   Flexible(
                    flex: 1,
                    child:  Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all( Radius.circular(5.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                           Text(
                            "I will ping you separately. Thanks",
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                   Flexible(
                    flex: 1,
                    child:  Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all( Radius.circular(30.0)),
                        color: Colors.white,
                      ),
                      child:  Row(
                        children: <Widget>[
                           IconButton(
                            disabledColor: Colors.grey,
                            color: Colors.grey,
                            icon: Icon(Icons.insert_emoticon),
                            onPressed: () {},
                          ),
                           Flexible(
                            child: Container(
                              constraints: BoxConstraints(maxHeight: 100.0),
                              child:  TextField(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.0),
                                textCapitalization:
                                    TextCapitalization.sentences,
                                textInputAction: null,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:  EdgeInsets.all(0.0),
                                  hintText: "Type a message",
                                  hintStyle:  TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 18.0,
                                  ),
                                  counterText: "",
                                ),
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                maxLength: 100,
                                cursorColor: Theme.of(context).primaryColor,
                                cursorWidth: 1.8,
                              ),
                            ),
                          ),
                           IconButton(
                            disabledColor: Colors.grey,
                            color: Colors.grey,
                            icon: Icon(Icons.attach_file),
                            onPressed: () {},
                          ),
//                           IconButton(
//                            disabledColor: Colors.grey,
//                            color: Colors.grey,
//                            icon: Icon(Icons.camera),
//                            onPressed: () {},
//                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 50.0,
                    child:  Padding(
                      padding:  EdgeInsets.only(left: 4.0),
                      child: FloatingActionButton(
                        elevation: 2.0,
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        child:  Icon(Icons.send),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
