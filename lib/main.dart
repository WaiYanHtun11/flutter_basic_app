import 'package:flutter/material.dart';
import 'package:flutter_basic_app/appbars/backdrop.dart';
import 'package:flutter_basic_app/appbars/basic_appbar.dart';
import 'package:flutter_basic_app/appbars/bottom_appbar.dart';
import 'package:flutter_basic_app/appbars/hidable_bottom_bar.dart';
import 'package:flutter_basic_app/appbars/search_bar.dart';
import 'package:flutter_basic_app/appbars/sliver_appbar.dart';
import 'package:flutter_basic_app/async/future_builder.dart';
import 'package:flutter_basic_app/async/stream_builder.dart';
import 'package:flutter_basic_app/key_example.dart';
import 'package:flutter_basic_app/layouts/row_column.dart';
import 'package:flutter_basic_app/lists/data_table.dart';
import 'package:flutter_basic_app/lists/grid_list.dart';
import 'package:flutter_basic_app/lists/list_wheel_view.dart';
import 'package:flutter_basic_app/lists/reorderable_list.dart';
import 'package:flutter_basic_app/lists/slidable_tile.dart';
import 'package:flutter_basic_app/lists/swipe_to_dismiss.dart';
import 'package:flutter_basic_app/navigation/bottom_navigation_bar.dart';
import 'package:flutter_basic_app/navigation/bottom_sheet.dart';
import 'package:flutter_basic_app/navigation/bottom_tab_bar.dart';
import 'package:flutter_basic_app/navigation/navigation_drawer.dart';
import 'package:flutter_basic_app/navigation/page_selector.dart';
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

import 'appbars/convex_appbar.dart';
import 'layouts/container.dart';
import 'lists/expansion_tile.dart';
import 'navigation/dialogs.dart';
import 'navigation/draggalbe_scrollable_sheet.dart';
import 'navigation/routes.dart';
import 'navigation/tabs.dart';
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
      home: const StreamBuilderExample(),
      // initialRoute: RoutesExample.routeName,
      routes: {
        RoutesExample.routeName : (context) => const RoutesExample()
      },
    );
  }
}

