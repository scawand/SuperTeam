import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  String mmm = "";

  @override
  Widget build(BuildContext context) {
    
   
    if (!pref) {}
    return const Center(
      child: pref,
    );
  }

  Future<void> 
}
*/

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  String _nom = '';
  final TextEditingController zoneText = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadCounter();
    _loadNom();
  }

  @override
  void dispose() {
    zoneText.dispose();
    super.dispose();
  }

  //Loading counter value on start
  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }

  //Incrementing counter after click
  Future<void> _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }

  //Loading counter value on start
  Future<void> _loadNom() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _nom = (prefs.getString('nom') ?? 'John');
    });
  }

  Future<void> _getNom() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _nom = (prefs.getString('nom') ?? 'John');
      prefs.setString('nom', _nom);
    });
  }

  Future<void> _setNom(String nouveauNom) async {
    final prefs = await SharedPreferences.getInstance();
    String nom = nouveauNom;
    setState(() {
      //_nom = (prefs.getString('nom') ?? 'jo');
      _nom = nom;
      prefs.setString('nom', nom);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: zoneText,
            ),
            const Text(
              'Mon nom est ',
            ),
            Text(
              _nom,
              style: Theme.of(context).textTheme.headline4,
            ),
            const Text(
              'You have pushed this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(onPressed: _incrementCounter, child: const Text("data")),
            TextButton(
                onPressed: () => _setNom(zoneText.text),
                child: const Text("Nom")),
          ],
        ),
      ),
    );
  }
}
