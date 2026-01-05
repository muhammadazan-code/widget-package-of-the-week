import 'package:flutter/material.dart';

class CustomScaffoldMessengerWidget extends StatefulWidget {
  const CustomScaffoldMessengerWidget({super.key});

  @override
  State<CustomScaffoldMessengerWidget> createState() =>
      _CustomScaffoldMessengerWidgetState();
}

class _CustomScaffoldMessengerWidgetState
    extends State<CustomScaffoldMessengerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text("SCAFFOLD MESSENGER"),
      ),
      body:
          Center(child: OutlinedButton(onPressed: () {}, child: Text("data"))),
      floatingActionButton: FloatingActionButton(onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("data"),
          backgroundColor: Colors.grey,
          showCloseIcon: true,
        ));
      }),
    );
  }
}
