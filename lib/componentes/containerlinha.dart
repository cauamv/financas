import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlinedContainer extends StatelessWidget {
  final Widget child;

  const OutlinedContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.transparent,
          width: 2,
        ),
      ),
      child: child,
    );
  }
}
