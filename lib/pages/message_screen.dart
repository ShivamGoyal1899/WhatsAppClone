import 'package:flutter/material.dart';
import 'package:LastChat/models/chat_model.dart';

var list = ["one", "two", "three", "four"];

enum MoreMenu { view_contact, media, search, mute, wallpaper, more }

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: new AppBar(
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new AssetImage(dummyData[3].avatarUrl),
              radius: 18.0,
            ),
            new Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 8.0),
                  child: new Text(
                    dummyData[3].name,
                    style: new TextStyle(fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, right: 50.0),
                  child: new Text(
                    "online",
                    style: new TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.videocam,
              color: Colors.white,
            ),
            tooltip: "Video call",
            onPressed: () {},
          ),
          new IconButton(
            icon: new Icon(
              Icons.call,
              color: Colors.white,
            ),
            tooltip: "Voice call",
            onPressed: () {},
          ),
          new PopupMenuButton<MoreMenu>(
            padding: const EdgeInsets.all(0.0),
            tooltip: "More options",
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MoreMenu>>[
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.view_contact,
                    child: Text('View contact'),
                  ),
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.media,
                    child: Text('Media'),
                  ),
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.search,
                    child: Text('Search'),
                  ),
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.mute,
                    child: Text('Mute notifications'),
                  ),
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.wallpaper,
                    child: Text('Wallpaper'),
                  ),
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.more,
                    child: ListTile(
                      title: Text("More"),
                      contentPadding: const EdgeInsets.all(0.0),
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
            new Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 8.0,
                right: 8.0,
              ),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Flexible(
                    flex: 1,
                    child: new Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(5.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
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
            new Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                top: 8.0,
                left: 8.0,
              ),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Flexible(
                    flex: 1,
                    child: new Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(5.0)),
                        color: Colors.lightGreenAccent[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
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
            new Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 8.0,
                right: 8.0,
              ),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Flexible(
                    flex: 1,
                    child: new Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(5.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
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
            new Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                top: 3.0,
                left: 8.0,
              ),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Flexible(
                    flex: 1,
                    child: new Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(5.0)),
                        color: Colors.lightGreenAccent[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
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
            new Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
                top: 3.0,
                left: 8.0,
              ),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Flexible(
                    flex: 1,
                    child: new Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(5.0)),
                        color: Colors.lightGreenAccent[100],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
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
            new Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 8.0,
                right: 8.0,
              ),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Flexible(
                    flex: 1,
                    child: new Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.8,
                      ),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(5.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
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
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Flexible(
                    flex: 1,
                    child: new Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(30.0)),
                        color: Colors.white,
                      ),
                      child: new Row(
                        children: <Widget>[
                          new IconButton(
                            disabledColor: Colors.grey,
                            color: Colors.grey,
                            icon: Icon(Icons.insert_emoticon),
                            onPressed: () {},
                          ),
                          new Flexible(
                            child: Container(
                              constraints: BoxConstraints(maxHeight: 100.0),
                              child: new TextField(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.0),
                                textCapitalization:
                                    TextCapitalization.sentences,
                                textInputAction: null,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.all(0.0),
                                  hintText: "Type a message",
                                  hintStyle: new TextStyle(
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
                          new IconButton(
                            disabledColor: Colors.grey,
                            color: Colors.grey,
                            icon: Icon(Icons.attach_file),
                            onPressed: () {},
                          ),
//                          new IconButton(
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
                    child: new Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: FloatingActionButton(
                        elevation: 2.0,
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        child: new Icon(Icons.send),
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
