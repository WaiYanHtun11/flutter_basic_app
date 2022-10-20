import 'package:flutter/material.dart';
import 'package:flutter_basic_app/animations/animated_container.dart';
import 'package:flutter_basic_app/animations/animated_icons.dart';
import 'package:flutter_basic_app/animations/animation_package.dart';
import 'package:flutter_basic_app/animations/opacity.dart';
import 'package:flutter_basic_app/preview_page.dart';

import 'animations/hero.dart';
class AnimationPage extends StatelessWidget {
  const AnimationPage({Key? key}) : super(key: key);

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
        title: const Text("Animation"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Hero"),
            subtitle: const Text("Hero animation between routes"),
            onTap: (){
              goToPreview("Hero Widget", const HeroExample(), "../lib/animations/hero.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Opacity"),
            subtitle: const Text("Making a widget transparent/visible"),
            onTap: (){
              goToPreview("Opacity", const OpacityExample(), "../lib/animations/opacity.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("AnimatedIcon"),
            onTap: (){
              goToPreview("AnimatedIcon", const AnimatedIconsExample(), "../lib/animations/animated_icons.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Animated Container"),
            onTap: (){
              goToPreview("Animated Container", const AnimatedContainerExample(), "../lib/animations/animated_container.dart");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text("Animations Package"),
            onTap: (){
              goToPreview("Animations Package", const AnimationPackageExample(), "../lib/animations/animation_package.dart");
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
