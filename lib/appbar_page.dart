import 'package:flutter/material.dart';
import 'package:flutter_basic_app/appbars/backdrop.dart';
import 'package:flutter_basic_app/appbars/basic_appbar.dart';
import 'package:flutter_basic_app/appbars/bottom_appbar.dart';
import 'package:flutter_basic_app/appbars/convex_appbar.dart';
import 'package:flutter_basic_app/appbars/hidable_bottom_bar.dart';
import 'package:flutter_basic_app/appbars/search_bar.dart';
import 'package:flutter_basic_app/appbars/sliver_appbar.dart';
import 'package:flutter_basic_app/preview_page.dart';
class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void goToPreview(String title,Widget previewWidget , String filePath){
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext ctx) => PreviewPage(
              title: title,
              previewWidget: previewWidget,
              filePath: filePath,
            ),
          )
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Basic AppBar"),
            onTap: (){
              goToPreview("Basic AppBar", const BasicAppbarExample(), "../lib/appbars/basic_appbar.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Bottom AppBar and Floating App Button (FAB)"),
            onTap: (){
              goToPreview("Bottom App Bar & FAB", const BottomAppBarExample(), "../lib/appbars/bottom_appbar.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Sliver AppBar"),
            subtitle: const Text("Appbar that auto-hides"),
            onTap: (){
              goToPreview("Sliver AppBar", const SliverAppbarExample(), "../lib/appbars/sliver_appbar.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Search"),
            onTap: (){
              goToPreview("Search", const SearchBarExample(), "../lib/appbars/search_bar.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Backdrop"),
            subtitle: const Text("Switching between front and back layer"),
            onTap: (){
              goToPreview("Backdrop", const BackdropExample(), "../lib/appbars/backdrop.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Convex Appbar"),
            subtitle: const Text("Nicer-looking appbar(Flutter Favorite package"),
            onTap: (){
              goToPreview("Convex Appbar", const ConvexAppbarExample(), "../lib/appbars/convex_appbar.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Hidable Bottom Bar"),
            subtitle: const Text("Bottom bar that auto hides when scroll down"),
            onTap: (){
              goToPreview("Hidable Bottom Bar", const HidableBottomBarExample(), "../lib/appbars/hidable_bottom_bar.dart");
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
