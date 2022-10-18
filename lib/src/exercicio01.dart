import 'package:flutter/material.dart';

class Coin extends StatefulWidget {
  const Coin({super.key});

  @override
  State<Coin> createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  int clique = 0;
  int moedaCobre = 0;
  int moedaPrata = 0;
  int moedaOuro = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 01',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercício 01'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.pinkAccent, // foreground
                ),
                onPressed: () {
                  adicionaClique();
                  contaMoedaCobre();
                  contaMoedaPrata();
                  contaMoedaOuro();
                },
                child: const Text(
                  'Clique para inserir a moeda!',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
              Column(children: [
                CoinText(
                  messagem: 'Cliques: $clique',
                ),
                CoinText(
                  messagem: 'Moeda cobre - Cooper: $moedaCobre',
                ),
                CoinText(
                  messagem: 'Moeda prata - Silver: $moedaPrata',
                ),
                CoinText(
                  messagem: 'Moeda Ouro - Gold: $moedaOuro',
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }

  void adicionaClique() {
    setState(() => clique++);
  }

  void contaMoedaCobre() {
    setState(() => moedaCobre++);
  }

  void contaMoedaPrata() {
    if (moedaCobre > 9) {
      setState(() => moedaCobre = 0);
      setState(() => moedaPrata++);
    }
  }

  void contaMoedaOuro() {
    if (moedaPrata > 9) {
      setState(() => moedaPrata = 0);
      setState(() => moedaOuro++);
    }
  }
}

class CoinText extends StatelessWidget {
  final String messagem;

  const CoinText({super.key, required this.messagem});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Cliques: $messagem',
      style: const TextStyle(
        color: Colors.pinkAccent,
        fontWeight: FontWeight.w700,
        fontSize: 18,
      ),
    );
  }
}
