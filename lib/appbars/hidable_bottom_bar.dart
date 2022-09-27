import 'package:flutter/material.dart';
import 'package:hidable/hidable.dart';
class HidableBottomBarExample extends StatefulWidget {
  const HidableBottomBarExample({Key? key}) : super(key: key);

  @override
  State<HidableBottomBarExample> createState() => _HidableBottomBarExampleState();
}

class _HidableBottomBarExampleState extends State<HidableBottomBarExample> {
  int _index = 0;
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        controller: _scrollController,
          itemBuilder: (context, index)=> Container(
            height: 80,
            color: Colors.primaries[index % Colors.primaries.length],
          ),
          separatorBuilder: (_,index) => const SizedBox(height: 10),
          itemCount: 100
      ),
      bottomNavigationBar: Hidable(
        controller: _scrollController,
        wOpacity: true,
        child: BottomNavigationBar(
          onTap: (index) => setState(() {
            _index = index;
          }),
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.amber.withOpacity(.9),
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.favorite),
              label: 'Favorites',
              backgroundColor: Colors.blue.withOpacity(0.9),
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.green.withOpacity(0.9)
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.purple.withOpacity(0.9)
            ),

          ],
          currentIndex: _index,
        ),
      ) ,
    );
  }
}
