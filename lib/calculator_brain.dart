class PlusBrain {
  final int num1;
  final int num2;
  late int _value;

  PlusBrain({required this.num1, required this.num2});

  String answerValue() {
    _value = num1 + num2;
    return _value.toString();
  }

}

class MinusBrain {
  final int num1;
  final int num2;
  late int _value;

  MinusBrain({required this.num1, required this.num2});

  String answerValue() {
    _value = num1 - num2;
    return _value.toString();
  }

}



class MultBrain {
  final int num1;
  final int num2;
  late int _value;

  MultBrain({required this.num1, required this.num2});

  String answerValue() {
    _value = num1 * num2;
    return _value.toString();
  }

}


class DiviBrain {
  final int num1;
  final int num2;
  late double _value;

  DiviBrain({required this.num1, required this.num2});

  String answerValue() {
    _value = num1 / num2;
    return _value.toStringAsFixed(1);
  }

}