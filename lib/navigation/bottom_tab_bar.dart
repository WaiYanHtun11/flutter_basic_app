import 'package:flutter/material.dart';
class BottomTabBarExample extends StatefulWidget {
  const BottomTabBarExample({Key? key}) : super(key: key);

  @override
  State<BottomTabBarExample> createState() => _BottomTabBarExampleState();
}

class _BottomTabBarExampleState extends State<BottomTabBarExample> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  static const _tabPages = [
    Center(child: Icon(Icons.cloud_circle_outlined,size: 64,color: Colors.teal)),
    Center(child: Icon(Icons.alarm,size: 64,color: Colors.cyan)),
    Center(child: Icon(Icons.forum_outlined,size: 64,color: Colors.blue)),

  ];

  static const _tabs = <Tab>[
    Tab(icon: Icon(Icons.cloud_circle_outlined),text: 'Tab1'),
    Tab(icon: Icon(Icons.alarm),text: 'Tab2'),
    Tab(icon: Icon(Icons.forum_outlined),text: 'Tab3')
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
        length: _tabPages.length,
        vsync: this,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Bottom Tab Bar"),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabPages,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: _tabs,
          controller: _tabController,
        ),
      ),
    );
  }
}
