import 'package:flutter/material.dart';

class CustomSearchDialog extends SearchDelegate {
  List<String> searchItem = [
    "Apple",
    "Orange",
    "Banana",
    "Tomato",
    "Carots",
    "Puper",
    "Fish",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQyery = [];
    for (var fruits in searchItem) {
      if (fruits.toLowerCase().contains(query.toLowerCase())) {
        matchQyery.add(fruits);
      }
    }
    return ListView.builder(
        itemCount: matchQyery.length,
        itemBuilder: (context, index) {
          var result = matchQyery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQyery = [];
    for (var fruits in searchItem) {
      if (fruits.toLowerCase().contains(query.toLowerCase())) {
        matchQyery.add(fruits);
      }
    }
    return ListView.builder(
        itemCount: matchQyery.length,
        itemBuilder: (context, index) {
          var result = matchQyery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
  }

