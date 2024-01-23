import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(BuildContext context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      // corrected method name to canLaunch
      await launchUrl(uri);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Successfully launched"),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Cannot launch $url"),
          backgroundColor: Colors.red,
        ),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("URL is null"),
        backgroundColor: Colors.red,
      ),
    );
  }
}
