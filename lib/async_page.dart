import 'package:flutter/material.dart';
import 'package:flutter_basic_app/async/future_builder.dart';
import 'package:flutter_basic_app/async/stream_builder.dart';
import 'package:flutter_basic_app/preview_page.dart';
class AsyncPage extends StatelessWidget {
  const AsyncPage({Key? key}) : super(key: key);

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
        title: const Text("Async"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("FutureBuilder"),
            onTap: (){
              goToPreview("FutureBuilder", const FutureBuilderExample(),"../lib/async/future_builder.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("StreamBuilder ( timer app )"),
            subtitle: const Text("Update UI according to the last stream value"),
            onTap: (){
              goToPreview("StreamBuilder ( timer app )", const StreamBuilderExample(), "../lib/async/stream_builder.dart");
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
