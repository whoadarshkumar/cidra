import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  final Function()? onTap;
  const Explore({super.key, required this.onTap});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Explore IIITBh',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff9C2040),
      ),
      body: Center(
        child: Row(
          children: [
            const SizedBox(width: 10),
            const Text("IIIT Bhagalpur Student?"),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: widget.onTap,
              child: const Text(
                "LogIn @IIITBh",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
