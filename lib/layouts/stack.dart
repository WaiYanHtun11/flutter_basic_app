import 'package:flutter/material.dart';
class StackExample extends StatefulWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {

  AlignmentDirectional _alignmentDirectional = AlignmentDirectional.topStart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: _alignmentDirectional,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            )
          ],
        ),
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar(){

    const kAlignmentDirectionalValues = <String,AlignmentDirectional>{
      "topStart" : AlignmentDirectional.topStart,
      "topCenter": AlignmentDirectional.topCenter,
      "topEnd": AlignmentDirectional.topEnd,
      "centerStart": AlignmentDirectional.centerStart,
      "center": AlignmentDirectional.center,
      "centerEnd": AlignmentDirectional.centerEnd,
      "bottomStart": AlignmentDirectional.bottomStart,
      "bottomCenter": AlignmentDirectional.bottomCenter,
      "bottomEnd": AlignmentDirectional.bottomEnd
    };

    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text("Alignment Directional"),
            trailing: DropdownButton<AlignmentDirectional>(
              value: _alignmentDirectional,
              onChanged: (AlignmentDirectional? newVal){
                if(newVal != null){
                  setState(() {
                    _alignmentDirectional = newVal;
                  });
                }
              },
              items: kAlignmentDirectionalValues.map(
                      (String name, AlignmentDirectional val) => MapEntry(
                          name, DropdownMenuItem(value: val,child: Text(name))
                      )
              ).values.toList(),
            ),
          )
        ],
      ),
    );
  }
}
