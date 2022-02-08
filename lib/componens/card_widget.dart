import 'package:demo2/constans.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.num,
    required this.plusPress,
    required this.minusPress,
  }) :  super(key: key);

  final String num;
  final VoidCallback plusPress;
  final VoidCallback minusPress;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      decoration: boxDecoration,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          children: [
            Text(
              num,
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 40.0,
                  child: TextButton(
                    onPressed: minusPress,
                    child: Icon(FontAwesomeIcons.minusCircle),
                  ),
                ),
                SizedBox(
                  width: 40.0,
                  child: TextButton(
                    onPressed: plusPress,
                    child: Icon(FontAwesomeIcons.plusCircle),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
