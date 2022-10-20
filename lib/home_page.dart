import 'package:flutter/material.dart';
import 'package:flutter_basic_app/animation_page.dart';
import 'package:flutter_basic_app/appbar_page.dart';
import 'package:flutter_basic_app/async_page.dart';
import 'package:flutter_basic_app/layout_page.dart';
import 'package:flutter_basic_app/list_page.dart';
import 'package:flutter_basic_app/navigation_page.dart';
import 'package:flutter_basic_app/widget_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Basic App"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            leading: const Icon(Icons.widgets),
            title: const Text("Widgets"),
            onTap: (){
              //Navigate to Widget Page
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext ctx) => const WidgetPage(),
                )
              );
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text("Layouts"),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext ctx) => const LayoutPage(),
                  )
              );
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text("Lists"),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext ctx) => const ListPage(),
                  )
              );
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.desktop_windows),
            title: const Text("Appbar"),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext ctx) => const AppBarPage(),
                  )
              );
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.screen_share),
            title: const Text("Navigation"),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext ctx) => const NavigationPage(),
                  )
              );
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.timer),
            title: const Text("Async"),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const AsyncPage(),
                  )
              );
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.animation),
            title: const Text("Animation ( basics )"),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext ctx) => const AnimationPage(),
                  )
              );
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),

        ],
      ),
    );
  }
}
