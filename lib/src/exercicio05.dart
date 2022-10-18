import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Stone extends StatefulWidget {
  const Stone({super.key});

  @override
  State<Stone> createState() => _StoneState();
}

class _StoneState extends State<Stone> {
  int clique = 0;
  int stones = 0;
  int pieces = 0;
  int fragments = 0;
  String urlImage = 'https://i.imgur.com/jTqNa7D.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 05',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercício 05'),
        ),
        body: GestureDetector(
          onTap: () {
            adicionaClique();
            contaFragments();
            contaStones();
            contaPieces();
          },
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Cliques: $clique',
                  style: const TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Fragments: $fragments',
                  style: const TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Pieces: $pieces',
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Stones: $stones',
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                Image.network(
                  urlImage,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void adicionaClique() {
    setState(() => clique++);
  }

  void contaFragments() {
    setState(() => fragments++);
    setState(() => urlImage = 'https://i.imgur.com/jTqNa7D.png');
  }

  void contaPieces() {
    if (fragments > 9) {
      setState(() => fragments = 0);
      setState(() => pieces++);
      setState(() => urlImage =
          'https://camo.githubusercontent.com/394b5b22aaad6b38d4d0ba61dd39c660d7f6f177cec3d435875f7deaa65b43e9/68747470733a2f2f692e696d6775722e636f6d2f495235536e36582e706e67');
    }
  }

  void contaStones() {
    if (pieces > 9) {
      setState(() => pieces = 0);
      setState(() => stones++);
      setState(() => urlImage =
          'https://camo.githubusercontent.com/afc2d6fab0b5262d761f4f7ea53440db2d4363ff86d955e03837d0325963ecc8/68747470733a2f2f692e696d6775722e636f6d2f4a4165475262312e706e67');
    }
  }
}
