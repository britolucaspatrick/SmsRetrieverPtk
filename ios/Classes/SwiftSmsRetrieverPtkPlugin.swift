import Flutter
import UIKit

public class SwiftSmsRetrieverPtkPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "SmsRetrieverPtk", binaryMessenger: registrar.messenger())
    let instance = SwiftSmsRetrieverPtkPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
