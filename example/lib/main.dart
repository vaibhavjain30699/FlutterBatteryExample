import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutterplugingg/flutterplugingg.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int BatteryLevel = 0;

  @override
  void initState() {
    super.initState();
    //initPlatformState();
    _getBatteryLevel();
  }

  _getBatteryLevel() async{
    int b = await Flutterplugingg.batteryPercentage;
    if(mounted){
      setState(() {
        BatteryLevel = b;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $BatteryLevel\n'),
        ),
      ),
    );
  }
}
