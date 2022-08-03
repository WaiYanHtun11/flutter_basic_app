import 'package:flutter/material.dart';
import 'package:flutter_basic_app/key_example.dart';
import 'package:flutter_basic_app/widgets/icon.dart';
import 'package:flutter_basic_app/widgets/image.dart';
import 'package:flutter_basic_app/widgets/text.dart';
import 'package:flutter_basic_app/widgets/text_field.dart';
import 'package:flutter_basic_app/widgets/text_form_field.dart';

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
      home: const ImageExample(),
    );
  }
}

