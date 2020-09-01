import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LinksLandingPage(),
    );
  }
}

class LinksLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Material(
      child: Column(
        children: [
          SizedBox(height: 35),
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            backgroundColor: Colors.white,
            radius: 48,
          ),
          SizedBox(height: 12),
          Text(
            '@socialhandle',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: width > 680 ? 680 : width * 0.95,
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 25),
              onPressed: () {},
              child: Text(
                'YouTube',
                style: TextStyle(fontSize: 16),
              ),
              color: Colors.tealAccent,
            ),
          )
        ],
      ),
    );
  }
}

final imageUrl =
    'https://pbs.twimg.com/profile_images/1300331531357974528/ZGAghO7W_400x400.jpg';
