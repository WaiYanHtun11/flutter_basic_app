import 'package:flutter/material.dart';
import 'package:flutter_basic_app/key_example.dart';
import 'package:flutter_basic_app/layouts/row_column.dart';
import 'package:flutter_basic_app/layouts/stack.dart';
import 'package:flutter_basic_app/layouts/wrap.dart';
import 'package:flutter_basic_app/lists/list_tile.dart';
import 'package:flutter_basic_app/lists/listview_builder.dart';
import 'package:flutter_basic_app/widgets/button.dart';
import 'package:flutter_basic_app/widgets/card.dart';
import 'package:flutter_basic_app/widgets/gradient.dart';
import 'package:flutter_basic_app/widgets/icon.dart';
import 'package:flutter_basic_app/widgets/image.dart';
import 'package:flutter_basic_app/widgets/stateful_widgets.dart';
import 'package:flutter_basic_app/widgets/text.dart';
import 'package:flutter_basic_app/widgets/text_field.dart';
import 'package:flutter_basic_app/widgets/text_form_field.dart';
import 'package:flutter_basic_app/widgets/dropdown_button.dart';

import 'layouts/container.dart';
import 'layouts/expanded.dart';
import 'layouts/fractionally_sized_box.dart';
import 'lists/grid_list.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GridListExample(),
    );
  }
}

