import 'package:flutter/material.dart';
import 'package:links_landing_page/links_landing_page/links_landing_page.dart';

class PreviewSection extends StatelessWidget {
  const PreviewSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 28.0),
            child: Text(
              'Preview',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Center(
                child: AspectRatio(
                  aspectRatio: 1 / 2,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 10),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: LinksLandingPage(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
