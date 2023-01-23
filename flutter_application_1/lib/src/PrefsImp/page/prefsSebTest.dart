import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/librairiesSeb/sharedPreferences.dart';

import '../widget/title_widget.dart';

class PrefTestSeb extends StatefulWidget {
  const PrefTestSeb({super.key});

  @override
  State<PrefTestSeb> createState() => _PrefTestSebState();
}

class _PrefTestSebState extends State<PrefTestSeb> {
  String name = '';

  @override
  void initState() {
    super.initState();
    //name = MySharedPreferences.getUsername() ?? 'vide';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TitleWidget(icon: Icons.save_alt, text: 'Shared\nPreferences'),
            const SizedBox(height: 32),
            buildName(),
            //const SizedBox(height: 12),
            //buildBirthday(),
            // const SizedBox(height: 12),
            //buildPets(),
            //const SizedBox(height: 32),
            //buildButton(),
          ],
        ),
        /*
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const Text(
              'Mon nom est ',
            ),
            TextButton(onPressed: _incrementCounter, child: const Text("data")),
            TextButton(
                onPressed: () => _setNom(zoneText.text),
                child: const Text("Nom")),
          ],
        ),
        */
      ),
    );
  }

  Widget buildName() => buildTitle(
        title: 'Name',
        child: TextFormField(
          initialValue: name,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Your Name',
          ),
          onChanged: (name) => setState(() => this.name = name),
        ),
      );
  Widget buildCurrentCulture() => buildTitle(
        title: 'Name',
        child: TextFormField(
          initialValue: name,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Your Name',
          ),
          onChanged: (name) => setState(() => this.name = name),
        ),
      );
  Widget buildTitle({
    required String title,
    required Widget child,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          child,
        ],
      );
}
/*
Future initpref() async {
  await UserSimplePreferences.
}
*/