import 'dart:convert';

import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'Food.dart';

//Package pour searchbar
import 'package:easy_search_bar/easy_search_bar.dart';

// Package http pour api
import 'package:http/http.dart' as http;

// test api
Future<List<Food>> fetchData() async {
  final response = await http.get(Uri.parse(
      "https://food-nutrition.canada.ca/api/canadian-nutrient-file/food/?lang=en&type=json"));
  if (response.statusCode == 200) {
    List foodList = jsonDecode(response.body);
    return foodList.map((e) => Food.fromJson(e)).toList();
  } else {
    throw Exception('Failed to load data');
  }
}

class SchoolPage extends StatefulWidget {
  SchoolPage({super.key});

  @override
  State<SchoolPage> createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  late Future<List<Food>> futureFood;
  @override
  void initState() {
    super.initState();
    futureFood = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    String searchValue = '';
    final List<String> noms = [
      "Mike",
      "Seb",
      "Léo",
      "Bruno",
      "Jean",
      "Benoit",
      "Andréa",
      "Carl",
      "Mike",
      "Seb",
      "Léo",
    ];
    return Container(
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "Students",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
            scale: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: EasySearchBar(
              title: const Text('Search'),
              onSearch: (value) => setState(() => searchValue = value),
              suggestions: noms,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              border: Border(
            top: BorderSide(color: Colors.amber, width: 2),
          )),
          height: 311,
          child: FutureBuilder<List<Food>>(
              future: futureFood,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        return Text(snapshot.data![index].food_description);
                      });
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return Text("return");
              }),
        ),
      ]),
    );
  }
}
