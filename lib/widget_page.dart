import 'package:flutter/material.dart';
import 'package:flutter_basic_app/preview_page.dart';
import 'package:flutter_basic_app/widgets/button.dart';
import 'package:flutter_basic_app/widgets/card.dart';
import 'package:flutter_basic_app/widgets/dropdown_button.dart';
import 'package:flutter_basic_app/widgets/gradient.dart';
import 'package:flutter_basic_app/widgets/icon.dart';
import 'package:flutter_basic_app/widgets/image.dart';
import 'package:flutter_basic_app/widgets/stateful_widgets.dart';
import 'package:flutter_basic_app/widgets/text.dart';
import 'package:flutter_basic_app/widgets/text_field.dart';
import 'package:flutter_basic_app/widgets/text_form_field.dart';
class WidgetPage extends StatelessWidget {
  const WidgetPage({Key? key}) : super(key: key);

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
        title: const Text("Widgets"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Icon"),
            onTap: (){
              goToPreview("Icon", const IconWidget(), "../lib/widgets/icon.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Text"),
            onTap: (){
              goToPreview("Text", const TextWidget(), "../lib/widgets/text.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("TextField"),
            subtitle: const Text("Text input."),
            onTap: (){
              goToPreview("TextField", const TextFieldWidget(), "../lib/widgets/text_field.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("TextFormField"),
            subtitle: const Text("Convenience widget wrapping a TextField in a FormField"),
            onTap: (){
              goToPreview("TextFormField", const TextFormFieldExample(), "../lib/widgets/text_form_field.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Image"),
            onTap: (){
              goToPreview("Image", const ImageExample(), "../lib/widgets/image.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Card,Inkwell"),
            subtitle: const Text("Container with corner and shadow;inkwell effect"),
            onTap: (){
              goToPreview("Card,Inkwell", const CardExample(), "../lib/widgets/card.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Gradient"),
            subtitle: const Text("Gradient and BoxDecoration for better UI"),
            onTap: (){
              goToPreview("Gradient", const GradientExample(), "../lib/widgets/gradient.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Buttons"),
            subtitle: const Text("ElevatedButton,TexButton,OutlineButton,IconButton&Tooltips"),
            onTap: (){
              goToPreview("Buttons", const ButtonExample(), "../lib/widgets/button.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("DropdownButton,MenuButton"),
            onTap: (){
              goToPreview("DropdownButton,MenuButton", const DropdownButtonExample(), "../lib/widgets/dropdown_button.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Other Stateful Widgets"),
            subtitle: const Text("Switch , Checkbox , Slider, etc."),
            onTap: (){
              goToPreview("Other Stateful Widgets", const StatefulWidgetsExample(), "../lib/widgets/stateful_widgets.dart");
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
