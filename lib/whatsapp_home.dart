import 'package:flutter/material.dart';
import 'package:LastChat/pages/camera_screen.dart';
import 'package:LastChat/pages/chat_screen.dart';
import 'package:LastChat/pages/status_screen.dart';
import 'package:LastChat/pages/call_screen.dart';

enum MoreMenu { new_group, new_broadcast, web, starred, payment, setting }

class WhatsAppHome extends StatefulWidget {
  var cameras;

  WhatsAppHome(this.cameras);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "LastChat",
          style: new TextStyle(fontSize: 24.0),
        ),
        elevation: 0.8,
        bottom: new TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 15,
              child: new Tab(
                icon: new Icon(Icons.camera_alt),
              ),
            ),
            new Container(
                width: MediaQuery.of(context).size.width / 5,
                child: new Tab(text: "CHATS")),
            new Container(
                width: MediaQuery.of(context).size.width / 5,
                child: new Tab(text: "STATUS")),
            new Container(
                width: MediaQuery.of(context).size.width / 5,
                child: new Tab(text: "CALLS")),
          ],
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: "Search",
            onPressed: () {},
          ),
          new PopupMenuButton<MoreMenu>(
            tooltip: "More options",
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MoreMenu>>[
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.new_group,
                    child: Text('New group'),
                  ),
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.new_broadcast,
                    child: Text('New broadcast'),
                  ),
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.web,
                    child: Text('WhatsApp Web'),
                  ),
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.starred,
                    child: Text('Starred messages'),
                  ),
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.payment,
                    child: Text('Payments'),
                  ),
                  const PopupMenuItem<MoreMenu>(
                    value: MoreMenu.setting,
                    child: Text('Settings'),
                  ),
                ],
          ),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(widget.cameras),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: _bottomButtons(),
    );
  }

  Widget _bottomButtons() {
    if (_tabController.index == 1) {
      return FloatingActionButton(
        shape: StadiumBorder(),
        onPressed: null,
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
      );
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
        shape: StadiumBorder(),
        onPressed: null,
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.camera,
          color: Colors.white,
        ),
      );
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
        shape: StadiumBorder(),
        onPressed: null,
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      );
    }
  }
}
