import 'package:flutter/material.dart';
class RoutesExample extends StatelessWidget {
  static const routeName = "/RoutesExample";

  const RoutesExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go To Page Two"),
          onPressed: (){
            Navigator.push(context, _PageTwo());
          },
        ),
      ),
    );
  }
}

class _PageTwo extends MaterialPageRoute<void>{
  _PageTwo():super(
    builder: (BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Page 2"),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text("Go To Page 3"),
            onPressed: (){
            //  Navigator.push<T> return a Future<T>, which is the
            //  return value of the pushed route when it's popped.
              Navigator.push(context, _PageThree()).then(
                      (returnVal){
                        if(returnVal != null){
                          ScaffoldMessenger.of(context).removeCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text("You Clicked: $returnVal"),
                              action: SnackBarAction(
                                label: 'OK',
                                onPressed: (){},
                              ),
                            )
                          );
                        }
                      }
              );
            },
          ),
        ) ,
      );
    }
  );

}

//Page Three will return a future string
class _PageThree extends MaterialPageRoute<String>{
    _PageThree():super(
      builder: (BuildContext context){
        return Scaffold(
          appBar: AppBar(
            title: const Text("Last Page"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(32.0),
            child: ListView(
              children: [
                ListTile(
                  leading: const CircleAvatar(child: Text("1")),
                  title: const Text("user1@gmail.com"),
                  onTap: ()=> Navigator.pop(context,"user1@gmail.com")
                ),
                ListTile(
                  leading: const CircleAvatar(child: Text("2")),
                  title: const Text("user2@gmail.com"),
                  onTap: ()=> Navigator.pop(context,"user2@gmail.com"),
                ),
                ListTile(
                  leading: const CircleAvatar(child: Text("3")),
                  title: const Text("user3@gmail.com"),
                  onTap: ()=> Navigator.pop(context,"user3@gmail.com"),
                ),
                const Divider(),
                MaterialButton(
                  child: const Text("Go Home"),
                    onPressed: (){
                      Navigator.popUntil(
                        context,
                        ModalRoute.withName(RoutesExample.routeName),
                      );
                    }
                )
              ],
            ),
          ) ,
        );
      }
    );
}
