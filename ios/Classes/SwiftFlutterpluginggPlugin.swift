import Flutter
import UIKit

public class SwiftFlutterpluginggPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutterplugingg", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterpluginggPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let device = UIDevice.current
    device.isBatteryMonitoringEnabled = true
    if(call.method == "getBatteryPercentage"){
      let levell = device.batteryLevel
      result(Int(levell*100))
    }
  }

}
