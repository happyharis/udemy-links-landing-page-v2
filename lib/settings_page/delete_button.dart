import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:links_landing_page/models/link_data.dart';
import 'package:provider/provider.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    Key key,
    @required this.document,
  }) : super(key: key);

  final LinkData document;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.delete),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            final _linksCollection = Provider.of<CollectionReference>(context);
            return AlertDialog(
              title: Text(
                  'Are you sure you want to delete the ${document.title} button?'),
              content: Text('The deleted links are not retrievable.'),
              actions: [
                FlatButton(
                  child: Text('Delete'),
                  color: Colors.redAccent,
                  onPressed: () {
                    _linksCollection.doc(document.id).delete();
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          },
        );
      },
    );
  }
}
