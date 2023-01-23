import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/Home/home.dart';
//import 'package:flutter_application_1/src/Home/home.dart';
import 'package:flutter_application_1/src/Home/home.dart';
//import 'package:flutter_application_1/src/Home/home.dart';
import 'package:flutter_application_1/src/Pages/Business/business_screen.dart';
import 'package:flutter_application_1/src/Pages/School/school_page.dart';
import 'package:flutter_application_1/src/PrefsImp/page/prefsSebTest.dart';
import 'package:flutter_application_1/src/librairiesSeb/sharedPreferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future main() async {
  await MySharedPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      title: "titre",
      localizationsDelegates: const [
        AppLocalizations.delegate,

        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en', 'US'), // English
        Locale('fr', 'CA'), // Francais
      ],
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    /*const HomePage(
      title: "sdf",
    ),*/
    const PrefTestSeb(),
    const BusinessScreen(),
    SchoolPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home3',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
              icon: const Icon(Icons.school),
              label: AppLocalizations.of(context)!.school),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("BRAVO");
        },
        child: const Icon(Icons.add),
      ),
      endDrawer: const Drawer(),
    );
  }
}
