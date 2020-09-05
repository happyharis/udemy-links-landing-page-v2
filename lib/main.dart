import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:links_landing_page/links_landing_page/links_landing_page.dart';
import 'package:links_landing_page/models/link_data.dart';
import 'package:links_landing_page/not_found_page.dart';
import 'package:links_landing_page/settings_page/settings_page.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseFirestore.instance.settings = Settings(
    host: 'localhost:8080',
    sslEnabled: false,
    persistenceEnabled: false,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final linksCollection = FirebaseFirestore.instance.collection('links');
    final userLinkDataStream = linksCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return LinkData.fromMap(doc.data());
      }).toList();
    });

    return StreamProvider(
      create: (context) => userLinkDataStream,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LinksLandingPage(),
          '/settings': (context) => SettingsPage(),
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) {
              return NotFoundPage();
            },
          );
        },
      ),
    );
  }
}
