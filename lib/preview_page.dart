import 'package:flutter/material.dart';
import 'package:flutter_basic_app/widgets/icon.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
class PreviewPage extends StatelessWidget {
  String title;
  Widget previewWidget;
  String filePath;
  PreviewPage({Key? key,required this.title,required this.previewWidget,required this.filePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: WidgetWithCodeView(
        sourceFilePath: filePath,
        child: previewWidget,
      ),
    );
  }
}
