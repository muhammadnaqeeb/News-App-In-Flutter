import 'package:flutter/material.dart';

import 'custom_tag.dart';

class NewsletterPoint extends StatelessWidget {
  final pointNo;
  final pointText;
  final color;
  NewsletterPoint({
    required this.color,
    required this.pointNo,
    Key? key,
    required this.pointText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 35,
          child: CustomTag(backgroundColor: color, children: [
            Text(
              '    $pointNo    ',
              style: TextStyle(color: Colors.white),
            ),
          ]),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          '$pointText',
          style: const TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
