package com.example.flutterplugingg;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.BatteryManager;
import android.os.Build;

import androidx.annotation.NonNull;

import java.util.logging.StreamHandler;

import io.flutter.Log;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** FlutterpluginggPlugin */
public class FlutterpluginggPlugin implements FlutterPlugin, MethodCallHandler {

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    final MethodChannel channel = new MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "flutterplugingg");
    channel.setMethodCallHandler(new FlutterpluginggPlugin());
  }

  @Override
  public void onDetachedFromEngine(FlutterPluginBinding flutterPluginBinding) {

  }

  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "flutterplugingg");
    //this.context = registrar.context();
    channel.setMethodCallHandler(new FlutterpluginggPlugin());
  }

  @TargetApi(Build.VERSION_CODES.LOLLIPOP)
  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    if(call.method.equals("getBatteryPercentage")){
      Log.e("Testing","Hello!");
    }
  }

}
