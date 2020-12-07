import 'package:flutter/material.dart';
import 'dart:async';
import 'package:SmsRetrieverPtk/SmsRetrieverPtk.dart';
import 'package:smsretrieverptk/smsretrieverptk.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String smsCode = "";

  @override
  void initState() {
    super.initState();
    startRetriever();

    //To get app signature use
    //SmsRetrieverPtk.getAppSignature();
  }

  @override
  void dispose() {
    super.dispose();
    SmsRetrieverPtk.stopListening();
  }

  Future<void> startRetriever() async {
    smsCode = await SmsRetrieverPtk.startListening();
    formatCode(smsCode);
  }

  formatCode(sms) {
    if (sms != null) {
      final intRegex = RegExp(r'\d+', multiLine: true);
      final code = intRegex.allMatches(sms).first.group(0);
      return code;
    }
    return "";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}
