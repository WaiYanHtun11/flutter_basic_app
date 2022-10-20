import 'package:flutter/material.dart';
import 'package:flutter_basic_app/layouts/container.dart';
import 'package:flutter_basic_app/layouts/expanded.dart';
import 'package:flutter_basic_app/layouts/fractionally_sized_box.dart';
import 'package:flutter_basic_app/layouts/row_column.dart';
import 'package:flutter_basic_app/layouts/stack.dart';
import 'package:flutter_basic_app/layouts/wrap.dart';
import 'package:flutter_basic_app/preview_page.dart';
class LayoutPage extends StatelessWidget {
  const LayoutPage({Key? key}) : super(key: key);

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
        title: const Text("Layouts"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Container"),
            subtitle: const Text("Basic widgets for layout"),
            onTap: (){
              goToPreview("Container", const ContainerExample(), "../lib/layouts/container.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Row, Column"),
            subtitle: const Text("Align children linearly"),
            onTap: (){
              goToPreview("Row, Column", const RowColumnExample(),"../lib/layouts/row_column.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Wrap"),
            subtitle: const Text("Wrap to the next row/column when run out of room or space"),
            onTap: (){
              goToPreview("Wrap", const WrapExample(), "../lib/layouts/wrap.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("FractionallySizedBox"),
            subtitle: const Text("Sizing Widgets to a fraction of the total available space"),
            onTap: (){
              goToPreview("FractionallySizedBox", const FractionallySizedBoxExample(), "../lib/layouts/fractionally_sized_box.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Expanded ,SizedBox"),
            subtitle: const Text("Dividing space by weights (flex)"),
            onTap: (){
              goToPreview("Expanded , SizedBox", const ExpandedExample(), "../lib/layouts/expanded.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Stack"),
            subtitle: const Text("Putting widget on top of another"),
            onTap: (){
              goToPreview("Stack", const StackExample(), "../lib/layouts/stack.dart");
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
