import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({Key? key}) : super(key: key);

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {

  Future<ByteData> _wait3SecAndLoadImage() async {
    await Future.delayed(const Duration(seconds: 3));
    return rootBundle.load('assets/images/img1.png');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          const Text("The image will be loaded after 3 seconds and will be shown in the UI"),
          FutureBuilder(
            future: _wait3SecAndLoadImage(),
              builder: (BuildContext context,AsyncSnapshot<ByteData> snapshot){
                if(!snapshot.hasData){
                  return const CircularProgressIndicator();
                }else if(snapshot.hasError){
                  return const Text("Error has happened in the future!");
                }else{
                  return Image.memory(snapshot.data!.buffer.asUint8List());
                }
              },
          ),
        ],
      ),
    );
  }
}
