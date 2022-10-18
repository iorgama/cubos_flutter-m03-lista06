import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 03',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercício 03'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Exercício 03',
                style: TextStyle(
                  color: Colors.purpleAccent,
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                ),
              ),
            ),
            Image.network(
              'https://d1ohrx9ht8bvf4.cloudfront.net/wp-content/uploads/2022/01/02173941/cute-cow-cake.jpg',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Block(cor: Colors.green),
                Block(cor: Colors.pinkAccent),
                Block(cor: Colors.orange)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Block extends StatelessWidget {
  final Color cor;

  const Block({
    super.key,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: cor,
    );
  }
}
