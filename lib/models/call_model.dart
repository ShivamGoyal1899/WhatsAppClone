import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String avatarUrl;

  CallModel({this.name, this.time, this.avatarUrl});
}

const myIcons = <String, IconData> {
  'threesixty': Icons.threesixty,
  'threed_rotation': Icons.threed_rotation,
};

List<CallModel> dummyData = [
  new CallModel(
    name: "Jesse Murias",
    time: "Yesterday, 1:16 pm",
    avatarUrl:
    "https://images.unsplash.com/photo-1556228852-6d35a585d566?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60",
  ),
  new CallModel(
    name: "Peter Ukeme",
    time: "8 June, 12:56 pm",
    avatarUrl:
    "https://images.unsplash.com/photo-1556228453-622594a86e9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60",
  ),
  new CallModel(
    name: "Christopher Campbell",
    time: "6 June, 11:07 am",
    avatarUrl:
    "https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60",
  ),
  new CallModel(
    name: "Yulian David",
    time: "16 May, 9:41 am",
    avatarUrl:
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60",
  ),
  new CallModel(
    name: "Marina Vitale",
    time: "9 May, 6:26 am",
    avatarUrl:
    "https://images.unsplash.com/photo-1486649567693-aaa9b2e59385?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60",
  ),
  new CallModel(
    name: "Averie Woodard",
    time: "18 April, 11:40 am",
    avatarUrl:
    "https://images.unsplash.com/photo-1500917293891-ef795e70e1f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60",
  ),
  new CallModel(
    name: "Brooke Cagle",
    time: "17 April, 9:47 pm",
    avatarUrl:
    "https://images.unsplash.com/photo-1484863137850-59afcfe05386?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60",
  ),
  new CallModel(
    name: "Bryan Minear",
    time: "17 March, 11:45 pm",
    avatarUrl:
    "https://images.unsplash.com/photo-1500561607578-e542f3149b97?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
  ),
  new CallModel(
    name: "Alexis Brown",
    time: "12 March, 9:52 pm",
    avatarUrl:
    "https://images.unsplash.com/photo-1450297350677-623de575f31c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60",
  ),
  new CallModel(
    name: "Timo Stern",
    time: "30/12/18, 10:32 pm",
    avatarUrl:
    "https://images.unsplash.com/photo-1484588168347-9d835bb09939?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=60",
  ),
  new CallModel(
    name: "Philipe Cavalcante",
    time: "24/12/18, 6:43 pm",
    avatarUrl:
    "https://images.unsplash.com/photo-1519742866993-66d3cfef4bbd?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
  ),
];
