import 'package:flutter/material.dart';

class Academics extends StatefulWidget {
  const Academics({super.key});

  @override
  State<Academics> createState() => _AcademicsState();
}

class _AcademicsState extends State<Academics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Academics',
      style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Color(0xff9C2040),
      ),
    );
  }
}
