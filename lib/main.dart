import 'package:finacas_de_hoje/paginas/paginaAcoes.dart';
import 'package:finacas_de_hoje/paginas/paginaBitCoin.dart';
import 'package:finacas_de_hoje/paginas/paginaPrincipal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/pagina-principal",
        routes: {
          '/pagina-principal': (context) => PaginaPrincipal(),
          '/acoes': (context) => PaginaAcoes(),
          '/bitcoin': (context) => PaginaBitCoin(),
        });
  }
}
