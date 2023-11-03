import 'package:collegeapp/functions/button.dart';
import 'package:collegeapp/pages/cseBooks.dart';
import 'package:collegeapp/pages/eceBooks.dart';
import 'package:collegeapp/pages/humBooks.dart';
import 'package:collegeapp/pages/maeBooks.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  String branch = 'Computer Science & Engineering';

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
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/logo.png",
            height: 100,
            width: 100,
          ),
          const Center(
            child: Text(
              "Welcome to Vikramshila Central Library of IIIT Bhagalpur",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Select a Branch from which you would like to browse the books",
              style: TextStyle(fontWeight: FontWeight.w300),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(20),
            child: DropdownButton<String>(
              dropdownColor: Colors.grey.shade200,
              isExpanded: true,
              value: branch,
              icon: const Icon(Icons.arrow_circle_down_rounded),
              onChanged: (String? newvalue) {
                setState(() {
                  branch = newvalue!;
                });
              },
              items: <String>[
                'Computer Science & Engineering',
                'Electronics & Communication Engineering',
                'Mechatronics and Automation Engineering',
                'Basic Science and Humanities'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
            ),
          ),
          TextButton(
            onPressed: () {
              if (branch == 'Computer Science & Engineering') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cesBooks()),
                );
              } else if (branch == 'Electronics & Communication Engineering') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => eceBooks()),
                );
              } else if (branch == 'Mechatronics and Automation Engineering') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => maeBooks()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => humBooks()),
                );
              }
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xff9C2040),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
