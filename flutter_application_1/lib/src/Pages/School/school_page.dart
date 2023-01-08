import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SchoolPage extends StatefulWidget {
  SchoolPage({super.key});

  @override
  State<SchoolPage> createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    final noms = <String>[
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
        Container(
          decoration: const BoxDecoration(
              border: Border(
            top: BorderSide(color: Colors.amber, width: 2),
          )),
          height: 311,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: noms.length,
            itemBuilder: (context, index) {
              return Card(
                child: CheckboxListTile(
                  value: false,
                  onChanged: (x) {
                    print("waw");
                  },
                  title: Text(noms[index]),
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
