

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biscochos de Repostería',
      theme: ThemeData(
        colorSchemeSeed: Colors.brown,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      home: const MyHomePage(title: 'Biscochos de Repostería'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Biscocho de Chocolate'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('¡Delicioso biscocho de chocolate!')));
            },
          ),
          ListTile(
            title: Text('Biscocho de Vainilla'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('¡Clásico biscocho de vainilla!')));
            },
          ),
          ListTile(
            title: Text('Biscocho de Fresa'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('¡Fresco biscocho de fresa!')));
            },
          ),
        ],
      ),
    );
  }
}

