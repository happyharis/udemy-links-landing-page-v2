import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Made in Flutter',
          style: TextStyle(fontSize: 19),
        ),
        SizedBox(width: 8),
        Image.network(
          'https://www.didierboelens.com/images/blog/hummingbird_logo.png',
          width: 25,
        )
      ],
    );
  }
}
