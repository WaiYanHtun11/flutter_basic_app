import 'package:flutter/material.dart';
class SliverAppbarExample extends StatelessWidget {
  const SliverAppbarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.orange,
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(

              title: const Text("FlexibleSpace Title"),
              background: Image.asset("images/img1.png",fit: BoxFit.fill),

            ),
          ),
          const SliverFillRemaining(
            child: Center(child: Text("Hello World")),
          )
        ],
      ),
    );
  }
}
