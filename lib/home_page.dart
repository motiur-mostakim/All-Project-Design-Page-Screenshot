
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            setState(() {
                  isDrawerOpen = !isDrawerOpen;
                });
          }, icon: const Icon(Icons.menu))
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isDrawerOpen = !isDrawerOpen;
                });
              },
              child: Text(isDrawerOpen ? "Close Drawer" : "Open Drawer"),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: isDrawerOpen ? 0 : -300, // Adjust height as needed
            left: 0,
            right: 0,
            child: Container(
              height: 300, // Adjust height as needed
              color: Colors.blue,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {},
                  ),
                  // Add more items here
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}