import 'package:demo2/calculator_brain.dart';
import 'package:demo2/componens/card_widget.dart';
import 'package:demo2/componens/symbol_widget.dart';
import 'package:demo2/constans.dart';
import 'package:demo2/screens/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _plusNum1 = 0;
  int _plusNum2 = 0;
  int _minusNum1 = 0;
  int _minusNum2 = 0;
  int _multNum1 = 0;
  int _multNum2 = 0;
  int _diviNum1 = 0;
  int _diviNum2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULATE APP'),
      ),
      body: Column(
        children: [
          //　足し算
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardWidget(
                num: _plusNum1.toString(),
                minusPress: () {
                  setState(() {
                    _plusNum1--;
                  });
                },
                plusPress: () {
                  setState(() {
                    _plusNum1++;
                  });
                },
              ),
              const SymbolWidget(label: '+'),
              CardWidget(
                num: _plusNum2.toString(),
                minusPress: () {
                  setState(() {
                    _plusNum2--;
                  });
                },
                plusPress: () {
                  setState(() {
                    _plusNum2++;
                  });
                },
              ),
              const SymbolWidget(label: '='),
              ElevatedButton(
                onPressed: () {
                  PlusBrain plusBrain =
                      PlusBrain(num1: _plusNum1, num2: _plusNum2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PlusPage(value: plusBrain.answerValue()),
                      ));
                },
                child: Text('CALCULATE'),
              ),
            ],
          ),

          //　引き算
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardWidget(
                num: _minusNum1.toString(),
                minusPress: () {
                  setState(() {
                    _minusNum1--;
                  });
                },
                plusPress: () {
                  setState(() {
                    _minusNum1++;
                  });
                },
              ),
              const SymbolWidget(label: '-'),
              CardWidget(
                num: _minusNum2.toString(),
                minusPress: () {
                  setState(() {
                    _minusNum2--;
                  });
                },
                plusPress: () {
                  setState(() {
                    _minusNum2++;
                  });
                },
              ),
              const SymbolWidget(label: '='),
              ElevatedButton(
                onPressed: () {
                  MinusBrain minusBrain =
                      MinusBrain(num1: _minusNum1, num2: _minusNum2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MinusPage(value: minusBrain.answerValue()),
                      ));
                },
                child: Text('CALCULATE'),
              ),
            ],
          ),

          //　掛け算
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardWidget(
                num: _multNum1.toString(),
                minusPress: () {
                  setState(() {
                    _multNum1--;
                  });
                },
                plusPress: () {
                  setState(() {
                    _multNum1++;
                  });
                },
              ),
              const SymbolWidget(label: '×'),
              CardWidget(
                num: _multNum2.toString(),
                minusPress: () {
                  setState(() {
                    _multNum2--;
                  });
                },
                plusPress: () {
                  setState(() {
                    _multNum2++;
                  });
                },
              ),
              const SymbolWidget(label: '='),
              ElevatedButton(
                onPressed: () {
                  MultBrain multBrain =
                      MultBrain(num1: _multNum1, num2: _multNum2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PlusPage(value: multBrain.answerValue()),
                      ));
                },
                child: Text('CALCULATE'),
              ),
            ],
          ),

          //　割り算
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardWidget(
                num: _diviNum1.toString(),
                minusPress: () {
                  setState(() {
                    _diviNum1--;
                  });
                },
                plusPress: () {
                  setState(() {
                    _diviNum1++;
                  });
                },
              ),
              const SymbolWidget(label: '÷'),
              CardWidget(
                num: _diviNum2.toString(),
                minusPress: () {
                  setState(() {
                    _diviNum2--;
                  });
                },
                plusPress: () {
                  setState(() {
                    _diviNum2++;
                  });
                },
              ),
              const SymbolWidget(label: '='),
              ElevatedButton(
                onPressed: () {
                  DiviBrain diviBrain =
                      DiviBrain(num1: _diviNum1, num2: _diviNum2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PlusPage(value: diviBrain.answerValue()),
                      ));
                },
                child: Text('CALCULATE'),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _plusNum1 = 0;
                _plusNum2 = 0;
                _minusNum1 = 0;
                _minusNum2 = 0;
                _multNum1 = 0;
                _multNum2 = 0;
                _diviNum1 = 0;
                _diviNum2 = 0;
              });
            },
            child: Container(
              decoration: boxDecoration.copyWith(color: Colors.pinkAccent),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                'RESET',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
