import 'package:flutter/material.dart';

class SearchDelegateO extends StatefulWidget {
  const SearchDelegateO({Key key}) : super(key: key);

  @override
  _SearchDelegateOState createState() => _SearchDelegateOState();
}

class _SearchDelegateOState extends State<SearchDelegateO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Container(
        child: Text("ll"),
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  List names = ["oday", "ahmad", "omar", "maher", "nizar"];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("$query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filter =
        names.where((element) => element.toString().contains(query)).toList();

    // List filter =
    //     names.where((element) => element.toString().startsWith(query)).toList();

    return ListView.builder(
      itemCount: query == "" ? names.length : filter.length,
      itemBuilder: (context, i) {
        return InkWell(
          onTap: () {
            query = query == "" ? names[i] : filter[i];
            showResults(context);
          },
          child: Container(
              padding: EdgeInsets.all(4),
              child: query == "" ? Text("${names[i]}") : Text("${filter[i]}")),
        );
      },
    );
  }
}
