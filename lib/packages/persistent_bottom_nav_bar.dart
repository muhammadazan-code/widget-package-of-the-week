import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class PersistentBottomNavBarExample extends StatelessWidget {
  const PersistentBottomNavBarExample({super.key});
  List<Widget> _buildScreen() {
    return [
      Center(child: Text("Home", style: TextStyle(fontSize: 50))),
      Center(child: Text("Search", style: TextStyle(fontSize: 50))),
      Center(child: Text("Add", style: TextStyle(fontSize: 50))),
      Center(child: Text("Message", style: TextStyle(fontSize: 50))),
      Center(child: Text("Me", style: TextStyle(fontSize: 50)))
    ];
  }

  List<PersistentBottomNavBarItem> _items() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: "Home",
        inactiveColorPrimary: Colors.black, // inactive icon Color
        activeColorSecondary: Colors.blue, // active  icon Color
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.search), title: "Search",
        inactiveColorPrimary: Colors.black, // inactive icon Color
        activeColorSecondary: Colors.blue, // active  icon Color
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.add), title: "Add",
        inactiveColorPrimary: Colors.black, // inactive icon Color
        activeColorSecondary: Colors.blue, // active  icon Color
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.chat_bubble), title: "Message",
        inactiveColorPrimary: Colors.black, // inactive icon Color
        activeColorSecondary: Colors.blue, // active  icon Color
      ),
      PersistentBottomNavBarItem(
        title: "Me",
        icon: Icon(
          CupertinoIcons.profile_circled,
        ),
        inactiveColorPrimary: Colors.black, // inactive icon Color
        activeColorSecondary: Colors.blue, // active  icon Color
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persistent Bottom Nav Bar Package"),
      ),
      body: PersistentTabView(
        context,
        screens: _buildScreen(),
        items: _items(),
        navBarStyle: NavBarStyle.style9,
      ),
    );
  }
}
