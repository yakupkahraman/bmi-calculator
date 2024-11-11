import 'package:flutter/material.dart';
import 'package:task/components/bottom_container.dart';
import 'package:task/components/reusable_box.dart';
import 'package:task/constants.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  final String bmi;
  final String advise;
  final Color textColor;
  const ResultPage({
    super.key,
    required this.resultText,
    required this.advise,
    required this.bmi,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.bottomCenter,
            child: const Text(
              'BMI Result',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableBox(
              colour: cActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmi,
                    style: const TextStyle(
                        fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    advise,
                    textAlign: TextAlign.center,
                    style: cClassicTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
              text: 'Re-Calculate',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
