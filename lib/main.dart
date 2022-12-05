import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wearable_communicator/wearable_communicator.dart';

void main() {
  runApp(const MyApp());
  WearableListener.listenForMessage((msg) {
    Fluttertoast.showToast(msg: msg["text"]);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: const Text('Zaprimanje poruke')),
      )
    );

  }
}

