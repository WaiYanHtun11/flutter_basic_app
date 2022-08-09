import 'package:flutter/material.dart';
class CardExample extends StatelessWidget {
  const CardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Card(
            color: Colors.red,
            elevation: 10.0,
            child: SizedBox(
              height: 150.0,
              child: Row(
                children: const [
                  Expanded(
                      child: Text("This is Card 1 This is Card 1 This is Card 1 This is Card 1 This is Card 1 This is Card 1This is Card 1This is Card 1"),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green,
            margin: const EdgeInsets.all(20.0),
            elevation: 0.0,
            child: SizedBox(
              height: 150.0,
              child: InkWell(
                splashColor: Colors.deepOrange,
                onTap: (){},
                child: Row(
                  children: const [
                    Expanded(child: Text("This is card 2 ( With Inkwell )")),
                  ],
                ),
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.elliptical(40, 80),
              ),
            ),
            child: SizedBox(
              height: 150,
              child: Row(
                children: const [
                  Expanded(child: Text("This is card 3 with border radius"))
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Stack(
                    children: [
                      Positioned.fill(
                          child: Image.asset("images/img1.png",fit: BoxFit.cover),

                      ),
                      Positioned(
                        left: 16,
                        bottom: 16,
                        right: 16,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text("Card 4 ( Complex Example)",
                                style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white)),
                          )
                      )
                    ],
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (){},
                        child: const Text("SHARE"),
                    ),
                    TextButton(
                        onPressed: (){},
                        child: const Text("EXPLORE")
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
