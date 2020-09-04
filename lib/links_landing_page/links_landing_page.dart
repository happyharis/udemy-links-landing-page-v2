import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:links_landing_page/links_landing_page/button_link.dart';
import 'package:links_landing_page/constants.dart';
import 'package:links_landing_page/links_landing_page/footer.dart';
import 'package:links_landing_page/models/link_data.dart';

class LinksLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('links').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          final _documents = snapshot.data.docs.map((doc) {
            return LinkData.fromMap(doc.data());
          }).toList();
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
                if (_documents.isEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 58.0),
                    child: Text('Whoops, have not added some links.'),
                  ),
                for (var document in _documents)
                  ButtonLink(
                    title: document.title,
                    url: document.url,
                  ),
                Spacer(),
                Footer(),
                SizedBox(height: 23),
              ],
            ),
          );
        });
  }
}
