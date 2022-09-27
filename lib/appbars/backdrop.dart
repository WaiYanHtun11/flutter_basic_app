import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
class BackdropExample extends StatelessWidget {
  const BackdropExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: const Text("Backdrop"),
      ),
        headerHeight: 100,
        backLayer: const Center(
          child: Text("Back Layer"),
        ),
        frontLayer: const Center(
          child: Text("This is front layer!"),
        )
    ) ;
  }
}
