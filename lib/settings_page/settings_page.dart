import 'package:flutter/material.dart';
import 'package:links_landing_page/settings_page/button_settings_section.dart';
import 'package:links_landing_page/settings_page/preview_section.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          ButtonSettingsSection(),
          PreviewSection(),
        ],
      ),
    );
  }
}
