import 'package:flutter/material.dart';



class SymbolWidget extends StatelessWidget {
  const SymbolWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 40,
          ),
        ));
  }
}