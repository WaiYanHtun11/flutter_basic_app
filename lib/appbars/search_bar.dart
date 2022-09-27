import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SearchBarExample extends StatefulWidget {
  const SearchBarExample({Key? key}) : super(key: key);

  @override
  State<SearchBarExample> createState() => _SearchBarExampleState();
}

class _SearchBarExampleState extends State<SearchBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Bar Demo"),
        actions: [
          IconButton(
              onPressed: (){
                showSearch(
                    context: context,
                    //to customize the search bar
                    delegate: CustomSearchDelegate()
                );
              },
              icon: const Icon(Icons.search_outlined)
          )
        ],
      ),
      body: const Center(
        child: Text("Type to search something"),
      ),
    );
  }

}

class CustomSearchDelegate extends SearchDelegate{

  //Demo list to show query
  List<String> searchTerms = [
    "Apple",
    "Arrow",
    "Banana",
    "Mango",
    "Pear",
    "Watermelons",
    "Blueberries",
    "Pineapples",
    "Strawberries"
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: (){
            query = '';
          },
          icon: const Icon(Icons.clear),
      )
    ];
  }

  //to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: (){
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back)
    );
  }

  //to show query  result
  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    List<String> matchQuery = [];

    for(var fruit in searchTerms){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
        itemBuilder: (context, index){
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
            onTap: ()=> Fluttertoast.showToast(msg: result),
          );
        },
    );
  }
  //to show the query process at the run time
  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String> matchQuery = [];
    for(var fruit in searchTerms){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          // onTap: ()=> Fluttertoast.showToast(msg: result),
        );
      },
    );
  }

}
