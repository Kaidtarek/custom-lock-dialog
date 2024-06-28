import 'package:custom_locked_dialog/widgets/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: MyDialog(),
      ),
    );
  }
}

class MyDialog extends StatefulWidget {
  const MyDialog({super.key});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
          onPressed: () {
            Lockshow(
                nextPractice: () {print("test one");}, educationJourney: () {print("test two");}, context: context);
          },
          icon: Icon(Icons.back_hand_outlined)),
    );
  }
}