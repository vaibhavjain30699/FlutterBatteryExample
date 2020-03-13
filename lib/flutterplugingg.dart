import 'dart:async';
import 'dart:ffi';

import 'package:flutter/services.dart';

class Flutterplugingg {
  static const MethodChannel _channel =
      const MethodChannel('flutterplugingg');

  static Future<int> get batteryPercentage async {
    final int battery = await _channel.invokeMethod('getBatteryPercentage');
    return battery;
  }

}
