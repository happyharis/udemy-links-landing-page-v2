import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '404',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 10),
          Text(
            'Page not found',
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
