import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class humBooks extends StatefulWidget {
  const humBooks({super.key});

  @override
  State<humBooks> createState() => _humBooksState();
}

class _humBooksState extends State<humBooks> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Vikramshila Central Library",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff9C2040),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/logo.png",
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Basic Science and Humanities Library',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              child: const Text(
                "BOOK 1",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: () async {
                _launchURL("www.google.com");
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              child: const Text(
                "BOOK 2",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: () async {
                _launchURL("www.google.com");
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              child: const Text(
                "BOOK 3",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: () async {
                _launchURL("www.google.com");
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              child: const Text(
                "BOOK 4",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: () async {
                _launchURL("www.google.com");
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              child: const Text(
                "BOOK 5",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: () async {
                _launchURL("www.google.com");
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
