import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Center(
          child: Text("M O B I L E"),
        ),
      ),
      body: Column(
        children: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.blueAccent,
            ),
          ),
        )],
      ),
    );
  }
}
