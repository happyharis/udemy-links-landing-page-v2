import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text('Add button'),
        color: Colors.greenAccent.shade400,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Add new button'),
                content: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Title',
                          hintText: 'Facebook',
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Link',
                          hintText: 'facebook.com/my-user-name',
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  FlatButton(
                    onPressed: () {},
                    child: Text('Add'),
                  ),
                  FlatButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('Cancel')),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
