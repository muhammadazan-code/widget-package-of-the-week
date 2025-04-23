import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  // Step 1: Define the list of Tab data type.
  List<Tab> tabs = [
    Tab(
        icon: Icon(Icons.camera, color: Colors.white),
        child: Text("Camera",
            style: TextStyle(color: Colors.white, fontSize: 20))),
    Tab(
        icon: Icon(Icons.chat_bubble_outline, color: Colors.white),
        child:
            Text("Chats", style: TextStyle(color: Colors.white, fontSize: 20))),
    Tab(
        icon: Icon(Icons.update, color: Colors.white),
        child: Text("Status",
            style: TextStyle(color: Colors.white, fontSize: 20))),
    Tab(
        icon: Icon(Icons.call, color: Colors.white),
        child:
            Text("Calls", style: TextStyle(color: Colors.white, fontSize: 20))),
  ];

  @override
  Widget build(BuildContext context) {
    // Step 2: Parent widget should be Default Tab Controller.
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Tab Bar Widget"),
          // Step 3: There is a property in AppBar is bottom which we assign the Tab Bar widget.
          bottom: TabBar(tabs: tabs),
        ),
        body: TabBarView(children: [
          Center(child: Text("Camera", style: TextStyle(fontSize: 50))),
          Center(child: Text("Chats", style: TextStyle(fontSize: 50))),
          Center(child: Text("Status", style: TextStyle(fontSize: 50))),
          Center(child: Text("Calls", style: TextStyle(fontSize: 50))),
        ]),
      ),
    );
  }
}
