import 'package:booky_app/Core/functions/warning_message.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(BuildContext context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      // corrected method name to canLaunch
      await launchUrl(uri);
      waringMeassage(context, "Successfully launched", Colors.green);
    } else {
      waringMeassage(context, "Cannot launch $url", Colors.red);
    }
  } else {
    waringMeassage(context, "URL is null", Colors.red);
  }
}
