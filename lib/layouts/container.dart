import 'package:flutter/material.dart';
class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 5.0),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.yellow
            ),
            padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
            child: Container(
              color: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              transform: Matrix4.rotationZ(-0.1),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(10),
                    left: Radius.circular(30)
                  )
                ),
                alignment: Alignment.center,
                child: const Text("C4"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
