import 'dart:async';
import 'whatsapp_home.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<Null> main() async{
  cameras = await availableCameras();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor:  Color(0xff075E54),
        accentColor:  Color(0xff25D336),
      ),
      debugShowCheckedModeBanner: false,
      home:  WhatsAppHome(cameras),
    );
  }
}
