import 'package:aula_widget/src/Exercicio01/theme.dart';
import 'package:flutter/material.dart';

class Coffee extends StatelessWidget {
  const Coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercicio 01',
      theme: CoffeeTheme.light,
      darkTheme: CoffeeTheme.dark,
      home: const CoffeeHome(),
    );
  }
}

class CoffeeHome extends StatelessWidget {
  const CoffeeHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              Icon(
                Icons.coffee,
                size: 34,
                color: theme.primaryColor,
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                'Coffee',
                style: TextStyle(color: theme.primaryColor, fontSize: 34),
              ),
            ],
          ),
          backgroundColor: Colors.yellow[300]),
    );
  }
}
