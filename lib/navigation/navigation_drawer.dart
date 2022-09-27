import 'package:flutter/material.dart';
class NavigationDrawerExample extends StatelessWidget {
  const NavigationDrawerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //drawer header widget
    const drawerHeader = UserAccountsDrawerHeader(
        accountName: Text("User Name"),
        accountEmail: Text("user@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: FlutterLogo(size: 42.0),
      ),
      otherAccountsPictures: [
        CircleAvatar(
          backgroundColor: Colors.yellow,
          child: Text("A"),
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          child: Text("B"),
        ),
      ],
    );

    //drawer items
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: const Text("To Page 1"),
          onTap: ()=> Navigator.of(context).push(_NewPage(1)),
        ),
        ListTile(
          title: const Text("To Page 2"),
          onTap: ()=> Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          title: const Text("To Page 3"),
          onTap: ()=> Navigator.of(context).push(_NewPage(3)),
        ),
        ListTile(
          title: const Text("Other drawer items"),
          onTap: ()=> Navigator.of(context).pop(),
        ),
        ListTile(
          title: const Text("Log Out"),
          onTap: ()=> Navigator.of(context).pop(),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Example"),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: Text("Swipe or click upper-left icon to see drawer"),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}

class _NewPage extends MaterialPageRoute<void>{
  _NewPage(int id):super(
      builder: (BuildContext context){
        return Scaffold(
          appBar: AppBar(
            title: Text("Page $id"),
            elevation: 1.0,
          ),
          body: Center(
            child: Text("Page $id"),
          ),
        );
      }
  );
}
