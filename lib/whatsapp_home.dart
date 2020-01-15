import 'package:flutter/material.dart';
import 'pages/SettingScreens/SettingMainScreen.dart';
import 'pages/camera_screen.dart';
import 'pages/chat_screen.dart';
import 'pages/status_screen.dart';
import 'pages/call_screen.dart';

enum MoreMenu { _group, _broadcast, web, starred, payment, setting }

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
    _tabController =  TabController(vsync: this, initialIndex: 1, length: 4);
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

  void choiceActions(MoreMenu choice) {
    if (choice == MoreMenu.setting) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SettingMainScreen()), // MessageScreen(i)
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title:  Text(
          "WhatsApp",
          style:  TextStyle(fontSize: 24.0),
        ),
        elevation: 0.8,
        bottom:  TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 15,
              child:  Tab(
                icon:  Icon(Icons.camera_alt),
              ),
            ),
             Container(
                width: MediaQuery.of(context).size.width / 5,
                child:  Tab(text: "CHATS")),
             Container(
                width: MediaQuery.of(context).size.width / 5,
                child:  Tab(text: "STATUS")),
             Container(
                width: MediaQuery.of(context).size.width / 5,
                child:  Tab(text: "CALLS")),
          ],
        ),
        actions: <Widget>[
           IconButton(
            icon:  Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: "Search",
            onPressed: () {},
          ),
           PopupMenuButton<MoreMenu>(
            onSelected: choiceActions,
            tooltip: "More options",
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MoreMenu>>[
               PopupMenuItem<MoreMenu>(
                value: MoreMenu._group,
                child: Text(' group'),
              ),
               PopupMenuItem<MoreMenu>(
                value: MoreMenu._broadcast,
                child: Text(' broadcast'),
              ),
               PopupMenuItem<MoreMenu>(
                value: MoreMenu.web,
                child: Text('WhatsApp Web'),
              ),
               PopupMenuItem<MoreMenu>(
                value: MoreMenu.starred,
                child: Text('Starred messages'),
              ),
               PopupMenuItem<MoreMenu>(
                value: MoreMenu.payment,
                child: Text('Payments'),
              ),
               PopupMenuItem<MoreMenu>(
                value: MoreMenu.setting,
                child: Text('Settings'),
              ),
            ],
          ),
        ],
      ),
      body:  TabBarView(
        controller: _tabController,
        children: <Widget>[
           CameraScreen(widget.cameras),
           ChatScreen(),
           StatusScreen(),
           CallScreen(),
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
        child:  Icon(
          Icons.message,
          color: Colors.white,
        ),
      );
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
        shape: StadiumBorder(),
        onPressed: null,
        backgroundColor: Theme.of(context).accentColor,
        child:  Icon(
          Icons.camera,
          color: Colors.white,
        ),
      );
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
        shape: StadiumBorder(),
        onPressed: null,
        backgroundColor: Theme.of(context).accentColor,
        child:  Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      );
    }
  }
}
