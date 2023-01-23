import 'package:drift/drift.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../data/carbi.dart';

final CarbiDb _carbiDb = CarbiDb();

class BusinessPage extends StatefulWidget {
  const BusinessPage({super.key});

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  Future<List<SupportedLocale>> locales =
      _carbiDb.select(_carbiDb.supportedLocales).get();
  Future<String> localeCount = _carbiDb
      .select(_carbiDb.supportedLocales)
      .get()
      .then((value) => 'There are $value locales.');

  Future<void> _addLocales() async {
    await _carbiDb
        .into(_carbiDb.supportedLocales)
        .insert(const SupportedLocalesCompanion(locale: Value('en-US')));

    setState(() {
      locales = _carbiDb.select(_carbiDb.supportedLocales).get();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<SupportedLocale>>(
        future: locales,
        initialData: const <SupportedLocale>[],
        builder: ((context, snapshot) => ListView(
              children: snapshot.data
                      ?.map((e) => ListTile(
                            title: Text(e.locale),
                          ))
                      .toList() ??
                  [],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addLocales,
        child: const Icon(Icons.add),
      ),
    );
  }
}

// class Business extends StatelessWidget {
//   const Business({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(items: [
//         BottomNavigationBarItem(
//                   onPressed: () async {
//                     await _carbiDb
//                         .into(_carbiDb.supportedLocales)
//                         .insert(const SupportedLocale(id: 1, locale: 'fr-CA'));

//                     await _carbiDb
//                         .into(_carbiDb.supportedLocales)
//                         .insert(const SupportedLocale(id: 2, locale: 'en-US'));
//                   },
//                   icon: const Icon(Icons.place)),
//       ]),
//     );
//   }
// }
