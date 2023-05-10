import 'package:flutter/material.dart';

class Variacao extends StatelessWidget {
  final double valor;

  const Variacao({
    Key? key,
    required this.valor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        padding: EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          color: valor >= 0 ? Colors.blue : Colors.red,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          style: TextStyle(
              color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
          valor.toString(),
        ),
      ),
    );
  }
}
