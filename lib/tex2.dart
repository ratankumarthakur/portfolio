import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class tex2 extends StatelessWidget {
  var child;

  tex2({super.key,required this.child,});

  final Uri _url = Uri.parse('https://www.linkedin.com/in/ratan-kumar-thakur-502162291/');


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchUrl,
      child:child,

    );

  }Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}


