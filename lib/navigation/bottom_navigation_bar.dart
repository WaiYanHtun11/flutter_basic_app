import 'package:flutter/material.dart';
class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarExample> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final tabPages = [
      const Center(child: Icon(Icons.cloud_circle_outlined,size: 64,color: Colors.teal)),
      const Center(child: Icon(Icons.alarm,size: 64,color: Colors.cyan)),
      const Center(child: Icon(Icons.forum_outlined,size: 64,color: Colors.blue)),
    ];

    final bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.cloud),label: 'Tab1',),
      const BottomNavigationBarItem(icon: Icon(Icons.alarm),label: 'Tab2'),
      const BottomNavigationBarItem(icon: Icon(Icons.forum),label: 'Tab3')

    ];

    final bottomNavBar = BottomNavigationBar(
        items: bottomNavBarItems,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int newIndex){
          setState(() {
            currentIndex = newIndex;
          });
      },
    );
    return Scaffold(
      body: tabPages[currentIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
