import 'package:demo2/constans.dart';
import 'package:flutter/material.dart';

import '../componens/result_card_widget.dart';

class PlusPage extends StatelessWidget {
  const PlusPage({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT PAGE'),
      ),
      body: Center(
        child: ResultCardWidget(value: value),
      ),
    );
  }
}

class MinusPage extends StatelessWidget {
  const MinusPage({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT PAGE'),
      ),
      body: Center(
        child: ResultCardWidget(value: value),
      ),
    );
  }
}

class MultPage extends StatelessWidget {
  const MultPage({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT PAGE'),
      ),
      body: Center(
        child: ResultCardWidget(value: value),
      ),
    );
  }
}

class DiviPage extends StatelessWidget {
  const DiviPage({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT PAGE'),
      ),
      body: Center(
        child: ResultCardWidget(value: value),
      ),
    );
  }
}



