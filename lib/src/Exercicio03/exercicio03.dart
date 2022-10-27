import 'package:flutter/material.dart';

class MyNavigatorBar extends StatelessWidget {
  const MyNavigatorBar({super.key});

  static const appTitle = 'Navigation Bar';
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Exercicio 03',
      home: MyComponentNavigator(title: appTitle),
    );
  }
}

class MyComponentNavigator extends StatelessWidget {
  const MyComponentNavigator({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(title),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade200,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
        ],
      ),
    );
  }
}
