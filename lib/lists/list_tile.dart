import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
class ListTileExample extends StatelessWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const ListTile(
            title: Text("Tile 0: basic"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.face),
            title: Text("Tile 1: with leading and trailing"),
            trailing: Icon(Icons.tag_faces),
          ),
          const Divider(),
          const ListTile(
            title: Text("Tile 2 title"),
            subtitle: Text("subtitle of tile 2"),
          ),
          const Divider(),
          const ListTile(
            title: Text("Tile 3: lines"),
            isThreeLine: true,
            subtitle: Text("subtitle of tile 3"),
          ),
          const Divider(),
          const ListTile(
            title: Text("Tile 4: dense"),
            dense: true,
          ),
          const Divider(),
          ListTile(
            title: const Text("Tile 5: tile with badge package"),
            subtitle: const Text("This use the badge package"),
            trailing: Badge(
              badgeColor: Colors.blueAccent,
              badgeContent: const Text("3"),
              child: const Icon(Icons.message),
            ),
          )

        ],
      ),
    );
  }
}
