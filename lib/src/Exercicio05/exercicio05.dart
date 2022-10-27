import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});
  static const appTitle = 'Card NFT';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Exercicio 03',
      home: CardNFT(title: appTitle),
    );
  }
}

class CardNFT extends StatelessWidget {
  const CardNFT({super.key, required this.title});
  final String title;
  final String heading = 'Equilibrium #3429';
  final String subheading = 'Nossa coleção Equilibrium promove calma e balanço';
  final String value = '0.0041 ETH';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              title,
            ),
          ],
        ),
        backgroundColor: const Color(0XFF14253D),
      ),
      backgroundColor: const Color(0XFF14253D),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 7.0,
          color: const Color(0XFF14253D),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: FittedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                        'https://camo.githubusercontent.com/dc30ec513e394f4863cdd26fcf702fb5519280a1f2ed33736771477e64d005dc/68747470733a2f2f692e696d6775722e636f6d2f773339717a61712e706e67'),
                  ),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Text(
                    heading,
                    style: const TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                subtitle: Text(
                  subheading,
                  style: TextStyle(
                      color: Colors.blue.shade200,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      value,
                      style: const TextStyle(
                          color: Colors.cyanAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          size: 22,
                          color: Colors.blue.shade200,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'restam 3 dias',
                            style: TextStyle(
                                color: Colors.blue.shade200,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                indent: 15,
                endIndent: 15,
                color: Colors.cyanAccent,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 24, // Image radius
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Criado por ',
                          style: TextStyle(
                              color: Colors.blue.shade200,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'Marnei Cardoso',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
