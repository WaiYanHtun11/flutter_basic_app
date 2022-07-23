import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.image,
        size: 64.0,
        color: Colors.purple,
      ),
    );
  }
}
