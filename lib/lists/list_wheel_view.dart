import 'package:flutter/material.dart';
class ListWheelViewExample extends StatefulWidget {
  const ListWheelViewExample({Key? key}) : super(key: key);

  @override
  State<ListWheelViewExample> createState() => _ListWheelViewExampleState();
}

class _ListWheelViewExampleState extends State<ListWheelViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView.useDelegate(
          itemExtent: 80,
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index){
              if(index < 0 || index > 100){
                return null;
              }
              return ListTile(
                leading: Text("$index",style:const TextStyle(fontSize: 50)),
                title: Text("Title $index"),
                 subtitle: const Text("Some Description"),
              );
            },
          )
      ),
    );
  }
}
