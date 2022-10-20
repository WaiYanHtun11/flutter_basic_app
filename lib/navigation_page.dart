import 'package:flutter/material.dart';
import 'package:flutter_basic_app/navigation/bottom_navigation_bar.dart';
import 'package:flutter_basic_app/navigation/bottom_sheet.dart';
import 'package:flutter_basic_app/navigation/bottom_tab_bar.dart';
import 'package:flutter_basic_app/navigation/dialogs.dart';
import 'package:flutter_basic_app/navigation/draggable_scrollable_sheet.dart';
import 'package:flutter_basic_app/navigation/navigation_drawer.dart';
import 'package:flutter_basic_app/navigation/page_selector.dart';
import 'package:flutter_basic_app/navigation/routes.dart';
import 'package:flutter_basic_app/navigation/tabs.dart';
import 'package:flutter_basic_app/preview_page.dart';
class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

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
        title: const Text("Navigation"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Tabs"),
            onTap: (){
              goToPreview("Tabs", const TabsExample(), "../lib/navigation/tabs.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Dialogs"),
            onTap: (){
              goToPreview("Dialogs", const DialogsExample(), "../lib/navigation/dialogs.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Routes"),
            subtitle: const Text("Jumping between pages"),
            onTap: (){
              goToPreview("Routes", const RoutesExample(), "../lib/navigation/routes.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Navigation Drawer"),
            onTap: (){
              goToPreview("Navigation Drawer", const NavigationDrawerExample(), "../lib/navigation/navigation_drawer.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Bottom Sheet"),
            onTap: (){
              goToPreview("Bottom Sheet", const BottomSheetExample(), "../lib/navigation/bottom_sheet.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Bottom Tab Bar"),
            onTap: (){
              goToPreview("Bottom Tab Bar", const BottomTabBarExample(), "../lib/navigation/bottom_tab_bar.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Bottom Navigation bar"),
            onTap: (){
              goToPreview("Bottom Navigation Bar", const BottomNavigationBarExample(), "../lib/navigation/bottom_navigation_bar.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Page Selector"),
            onTap: (){
              goToPreview("Page Selector", const PageSelectorExample(), "../lib/navigation/page_selector.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Draggable Scrollable Sheet"),
            onTap: (){
              goToPreview("Draggable Scrollable Sheet",const DraggableScrollableSheetExample(), "../lib/navigation/draggable_scrollable_sheet.dart");
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
