import 'package:flutter/material.dart';
import 'package:flutter_basic_app/lists/data_table.dart';
import 'package:flutter_basic_app/lists/expansion_tile.dart';
import 'package:flutter_basic_app/lists/grid_list.dart';
import 'package:flutter_basic_app/lists/list_tile.dart';
import 'package:flutter_basic_app/lists/list_wheel_view.dart';
import 'package:flutter_basic_app/lists/slidable_tile.dart';
import 'package:flutter_basic_app/lists/swipe_to_dismiss.dart';
import 'package:flutter_basic_app/preview_page.dart';

import 'lists/listview_builder.dart';
import 'lists/reorderable_list.dart';
class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);



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
        title: const Text("Lists"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("ListTile"),
            onTap: (){
              goToPreview("ListTile", const ListTileExample(), "../lib/lists/list_tile.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("ListView.builder"),
            subtitle: const Text("Building list items with a builder"),
            onTap: (){
              goToPreview("ListView.builder", const ListViewBuilder(), "../lib/lists/listview_builder.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("GridList"),
            onTap: (){
              goToPreview("GridList", const GridListExample(), "../lib/lists/grid_list.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("ExpansionTile"),
            onTap: (){
              goToPreview("Expansion Tile", const ExpansionTileExample(),  "../lib/lists/expansion_tile.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Swipe to dismiss"),
            onTap: (){
              goToPreview("Swipe to Dismiss",const SwipeToDismissExample(), "../lib/lists/swipe_to_dismiss.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Reorderable List"),
            onTap: (){
              goToPreview("ReorderableList", const ReorderableListExample(), "../lib/lists/reorderable_list.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("List Wheel Scroll View"),
            subtitle: const Text("fancy list view"),
            onTap: (){
              goToPreview("List Wheel Scroll View", const ListWheelViewExample(), "../lib/lists/list_wheel_view.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Slidable List Tile"),
            subtitle: const Text("Nice slidable tile from Flutter Favorite Package"),
            onTap: (){
              goToPreview("Slidable List Tile", const SlidableTileExample(), "../lib/lists/slidable_tile.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("DataTable"),
            subtitle: const Text("Showing data in a table"),
            onTap: (){
              goToPreview("DataTable", const DataTableExample(), "../lib/lists/data_table.dart");
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
