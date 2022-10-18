import 'package:flutter/material.dart';

class Alinhamento extends StatelessWidget {
  const Alinhamento({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 04',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Exercício 04'),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Block(cor: Colors.green),
                Block(cor: Colors.yellow),
                Block(cor: Colors.red)
              ],
            ),
          )),
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
      width: 90,
      height: 90,
      color: cor,
    );
  }
}
