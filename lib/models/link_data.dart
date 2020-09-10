import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LinkData {
  final String title;
  final String url;
  final String id;
  final int position;
  final DocumentReference documentReference;

  LinkData({
    @required this.title,
    @required this.url,
    this.id,
    this.position,
    this.documentReference,
  });

  factory LinkData.fromDocument(QueryDocumentSnapshot data) {
    return LinkData(
      title: data.data()['title'],
      url: data.data()['url'],
      id: data.id,
      documentReference: data.reference,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'url': url,
      'position': position,
    };
  }
}
