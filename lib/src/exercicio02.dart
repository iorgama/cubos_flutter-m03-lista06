import 'package:flutter/material.dart';

class MyComponent extends StatelessWidget {
  const MyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 02',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Exercício 02'),
          ),
          body: Center(
            child: Column(children: const [
              Block(
                altura: 100,
                largura: 250,
                cor: Colors.green,
              ),
              Block(
                altura: 70,
                largura: 70,
                cor: Colors.yellow,
              ),
              Block(
                altura: 130,
                largura: 300,
                cor: Colors.blue,
              ),
              Block(
                altura: 100,
                largura: 200,
                cor: Colors.red,
              )
            ]),
          )),
    );
  }
}

class Block extends StatelessWidget {
  final double altura;
  final double largura;
  final Color cor;

  const Block({
    super.key,
    required this.altura,
    required this.largura,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: largura,
      height: altura,
      color: cor,
    );
  }
}
