import 'package:flutter/material.dart';
class DraggableScrollableSheetExample extends StatelessWidget {
  const DraggableScrollableSheetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Draggable Scrollable Sheet"),
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: Container(
              color: Colors.red,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.2,
              minChildSize: 0.2,
              maxChildSize: 0.8,
              builder: (BuildContext context,ScrollController scrollController ) => Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8)
                  )
                ),
                child: Scrollbar(
                  controller: scrollController,
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 25,
                      itemBuilder: (context, index){
                        return ListTile(
                          leading: const Icon(Icons.ac_unit),
                          title: Text("Item $index"),
                        );
                      },
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
