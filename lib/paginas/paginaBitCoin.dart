import 'package:flutter/material.dart';

import '../componentes/botao.dart';
import '../componentes/containerlinha.dart';
import '../componentes/variacao.dart';

class PaginaBitCoin extends StatefulWidget {
  const PaginaBitCoin({super.key});

  @override
  State<PaginaBitCoin> createState() => _PaginaBitCoinState();
}

class _PaginaBitCoinState extends State<PaginaBitCoin> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    //BitCoin
    final blockchain = args['_blockchain'];
    final coinbase = args['_coinbase'];
    final bitstamp = args['_bitstamp'];
    final foxbit = args['_foxbit'];
    final bitcoin = args['_bitcoin'];
    //Variação
    final vblockchain = args['_vblockchain'];
    final vcoinbase = args['_vcoinbase'];
    final vbitstamp = args['_vbitstamp'];
    final vfoxbit = args['_vfoxbit'];
    final vbitcoin = args['_vbitcoin'];

    irPaginaPrincipal() {
      Navigator.pushNamed(context, "/pagina-principal");
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Finanças de Hoje"),
        backgroundColor: Color.fromARGB(255, 0, 68, 27),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                  child: Text("BitCoin",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ),
            SizedBox(height: 20),
            Container(
              height: 186,
              width: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: OutlinedContainer(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Blockchain.info',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            blockchain.toStringAsFixed(2),
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Variacao(
                                              valor: double.parse(vblockchain
                                                  .toStringAsFixed(3)))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: OutlinedContainer(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Coinbase',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            coinbase.toStringAsFixed(2),
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Variacao(
                                              valor: double.parse(
                                                  vcoinbase.toStringAsFixed(3)))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: OutlinedContainer(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'BitStamp',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            bitstamp.toStringAsFixed(2),
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Variacao(
                                              valor: double.parse(
                                                  vbitstamp.toStringAsFixed(3)))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: OutlinedContainer(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'FoxBit',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            foxbit.toStringAsFixed(2),
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Variacao(
                                              valor: double.parse(
                                                  vfoxbit.toStringAsFixed(3)))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: OutlinedContainer(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mercado Bitcoin',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            bitcoin.toStringAsFixed(2),
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Variacao(
                                              valor: double.parse(
                                                  vbitcoin.toStringAsFixed(3)))
                                        ],
                                      )
                                    ],
                                  ),
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
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Botao(
                  funcao: irPaginaPrincipal,
                  texto: 'Página Principal',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
