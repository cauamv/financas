import 'package:flutter/material.dart';

import '../componentes/botao.dart';
import '../componentes/containerlinha.dart';
import '../componentes/variacao.dart';

class PaginaAcoes extends StatefulWidget {
  const PaginaAcoes({super.key});

  @override
  State<PaginaAcoes> createState() => _PaginaAcoesState();
}

class _PaginaAcoesState extends State<PaginaAcoes> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    //Ações
    final ibovespa = args['_ibovespa'];
    final ifix = args['_ifix'];
    final nasdaq = args['_nasdaq'];
    final dowjones = args['_dowjones'];
    final cac = args['_cac'];
    final nikkei = args['_nikkei'];
    //Variação
    final vibovespa = args['_vibovespa'];
    final vifix = args['_vifix'];
    final vnasdaq = args['_vnasdaq'];
    final vdowjones = args['_vdowjones'];
    final vcac = args['_vcac'];
    final vnikkei = args['_vnikkei'];
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

    irBitCoin() {
      Navigator.pushNamed(context, "/bitcoin", arguments: {
        //BitCoin
        '_blockchain': blockchain,
        '_coinbase': coinbase,
        '_bitstamp': bitstamp,
        '_foxbit': foxbit,
        '_bitcoin': bitcoin,
        //Variações
        '_vblockchain': vblockchain,
        '_vcoinbase': vcoinbase,
        '_vbitstamp': vbitstamp,
        '_vfoxbit': vfoxbit,
        '_vbitcoin': vbitcoin,
      });
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
                    child: Text("Ações",
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
                                          'IBOVESPA',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              ibovespa.toStringAsFixed(2),
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 5),
                                            Variacao(
                                                valor: double.parse(vibovespa
                                                    .toStringAsFixed(2)))
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
                                          'IFIX',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              ifix.toStringAsFixed(2),
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 5),
                                            Variacao(
                                                valor: double.parse(
                                                    vifix.toStringAsFixed(2)))
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
                                          'NASDAQ',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              nasdaq.toStringAsFixed(2),
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 5),
                                            Variacao(
                                                valor: double.parse(
                                                    vnasdaq.toStringAsFixed(2)))
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
                                          'DOWJONES',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              dowjones.toStringAsFixed(2),
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 5),
                                            Variacao(
                                                valor: double.parse(vdowjones
                                                    .toStringAsFixed(2)))
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
                                          'CAC',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              cac.toStringAsFixed(2),
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 5),
                                            Variacao(
                                                valor: double.parse(
                                                    vcac.toStringAsFixed(2)))
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
                                          'NIKKEI',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              nikkei.toStringAsFixed(2),
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 5),
                                            Variacao(
                                                valor: double.parse(
                                                    vnikkei.toStringAsFixed(2)))
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Botao(
                    funcao: irBitCoin,
                    texto: 'Ir para Bitcoin',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
