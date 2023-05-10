import 'dart:convert';

import 'package:finacas_de_hoje/componentes/variacao.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../componentes/botao.dart';
import '../componentes/containerlinha.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  //Moedas
  double dolar = 0;
  double euro = 0;
  double peso = 0;
  double yen = 0;
  //Variações
  double vdolar = 0;
  double veuro = 0;
  double vpeso = 0;
  double vyen = 0;
  //Acoes
  double ibovespa = 0;
  double ifix = 0;
  double nasdaq = 0;
  double dowjones = 0;
  double cac = 0;
  double nikkei = 0;
  //Variações
  double vibovespa = 0;
  double vifix = 0;
  double vnasdaq = 0;
  double vdowjones = 0;
  double vcac = 0;
  double vnikkei = 0;
  //BitCoin
  double blockchain = 0;
  double coinbase = 0;
  double bitstamp = 0;
  double foxbit = 0;
  double bitcoin = 0;
  //Variações
  double vblockchain = 0;
  double vcoinbase = 0;
  double vbitstamp = 0;
  double vfoxbit = 0;
  double vbitcoin = 0;

  void initState() {
    super.initState();
    analisarMoedas();
  }

  analisarMoedas() async {
    final String urlHgBrasil =
        'https://api.hgbrasil.com/finance?format=json-cors&key=6467b526';
    Response resposta = await get(Uri.parse(urlHgBrasil));
    Map api = json.decode(resposta.body);
    setState(() {
      //Moedas
      dolar = api['results']['currencies']['USD']['buy'];
      euro = api['results']['currencies']['EUR']['buy'];
      peso = api['results']['currencies']['ARS']['buy'];
      yen = api['results']['currencies']['JPY']['buy'];
      //Variações
      vdolar =
          double.parse("${api['results']['currencies']['USD']['variation']}");
      veuro =
          double.parse("${api['results']['currencies']['EUR']['variation']}");
      vpeso =
          double.parse("${api['results']['currencies']['ARS']['variation']}");
      vyen =
          double.parse("${api['results']['currencies']['JPY']['variation']}");

      //Ações
      ibovespa =
          double.parse("${api['results']['stocks']['IBOVESPA']['points']}");
      ifix = double.parse("${api['results']['stocks']['IFIX']['points']}");
      nasdaq = double.parse("${api['results']['stocks']['NASDAQ']['points']}");
      dowjones =
          double.parse("${api['results']['stocks']['DOWJONES']['points']}");
      cac = double.parse("${api['results']['stocks']['CAC']['points']}");
      nikkei = double.parse("${api['results']['stocks']['NIKKEI']['points']}");
      //Variações
      vibovespa =
          double.parse("${api['results']['stocks']['IBOVESPA']['variation']}");
      vifix = double.parse("${api['results']['stocks']['IFIX']['variation']}");
      vnasdaq =
          double.parse("${api['results']['stocks']['NASDAQ']['variation']}");
      vdowjones =
          double.parse("${api['results']['stocks']['DOWJONES']['variation']}");
      vcac = double.parse("${api['results']['stocks']['CAC']['variation']}");
      vnikkei =
          double.parse("${api['results']['stocks']['NIKKEI']['variation']}");

      //BitCoin
      blockchain = double.parse(
          "${api['results']['bitcoin']['blockchain_info']['last']}");
      coinbase =
          double.parse("${api['results']['bitcoin']['coinbase']['last']}");
      bitstamp =
          double.parse("${api['results']['bitcoin']['bitstamp']['last']}");
      foxbit = double.parse("${api['results']['bitcoin']['foxbit']['last']}");
      bitcoin = double.parse(
          "${api['results']['bitcoin']['mercadobitcoin']['last']}");
      //Variações
      vblockchain = double.parse(
          "${api['results']['bitcoin']['blockchain_info']['variation']}");
      vcoinbase =
          double.parse("${api['results']['bitcoin']['coinbase']['variation']}");
      vbitstamp =
          double.parse("${api['results']['bitcoin']['bitstamp']['variation']}");
      vfoxbit =
          double.parse("${api['results']['bitcoin']['foxbit']['variation']}");
      vbitcoin = double.parse(
          "${api['results']['bitcoin']['mercadobitcoin']['variation']}");
    });
  }

  irAcoes() {
    Navigator.pushNamed(context, "/acoes", arguments: {
      //Ações
      '_ibovespa': ibovespa,
      '_ifix': ifix,
      '_nasdaq': nasdaq,
      '_dowjones': dowjones,
      '_cac': cac,
      '_nikkei': nikkei,
      //Variações
      '_vibovespa': vibovespa,
      '_vifix': vifix,
      '_vnasdaq': vnasdaq,
      '_vdowjones': vdowjones,
      '_vcac': vcac,
      '_vnikkei': vnikkei,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Finanças de Hoje",
          style: const TextStyle(fontWeight: FontWeight.w100),
        ),
        backgroundColor: Color.fromARGB(255, 0, 68, 27),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                  child: Text("MOEDAS",
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ),
            SizedBox(height: 20),
            Container(
              height: 134,
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
                                        'Dólar',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            dolar.toStringAsFixed(4),
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Variacao(
                                              valor: double.parse(
                                                  vdolar.toStringAsFixed(4)))
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
                                        'Euro',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            euro.toStringAsFixed(4),
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Variacao(
                                              valor: double.parse(
                                                  veuro.toStringAsFixed(4)))
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
                                        'Peso',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            peso.toStringAsFixed(4),
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Variacao(
                                              valor: double.parse(
                                                  vpeso.toStringAsFixed(4)))
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
                                        'Yen',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            yen.toStringAsFixed(4),
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 5),
                                          Variacao(
                                              valor: double.parse(
                                                  vyen.toStringAsFixed(4)))
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
                  funcao: irAcoes,
                  texto: 'Ir para Ações',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
