import 'package:flutter/material.dart';
class TabsExample extends StatelessWidget {
  const TabsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _tabPages = <Widget>[
      const Center(child: Icon(Icons.cloud,size: 64,color: Colors.teal)),
      const Center(child: Icon(Icons.alarm,size: 64,color: Colors.cyan)),
      const Center(child: Icon(Icons.forum,size: 64,color: Colors.blue))
    ];

    final _tabs = <Tab>[
      const Tab(icon: Icon(Icons.cloud),text: 'Tab1'),
      const Tab(icon: Icon(Icons.alarm),text: 'Tab2'),
      const Tab(icon: Icon(Icons.forum),text: 'Tab3')

    ];

    return DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab Example"),
            backgroundColor: Colors.cyan,
            bottom: TabBar(
              tabs: _tabs,
            ),
          ),
          body: TabBarView(
            children: _tabPages,
          ),
        )
    );
  }
}
