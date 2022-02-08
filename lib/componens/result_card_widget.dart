import 'package:demo2/constans.dart';
import 'package:flutter/material.dart';


class ResultCardWidget extends StatelessWidget {
  const ResultCardWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: boxDecoration,
      width: 300.0,
      height: 400.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'RESULT',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 70.0,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('RECALCULATE'),
          ),
        ],
      ),
    );
  }
}
