import 'package:flutter/material.dart';
import '../constants.dart';

class ContentBox extends StatelessWidget {
  const ContentBox({super.key, required this.iicon, required this.text});
  final IconData iicon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iicon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: cCardTextStyle,
        )
      ],
    );
  }
}
