import 'package:collegeapp/pages/PlacementPage.dart';
import 'package:collegeapp/pages/academics.dart';
import 'package:collegeapp/pages/examSchedule.dart';
import 'package:collegeapp/pages/library.dart';
import 'package:collegeapp/pages/timetable.dart';
import 'package:collegeapp/pages/documents.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // sign user out
  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IIIT Bhagalpur',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff9C2040),
        actions: [
          // sign out button
          IconButton(
            onPressed: signOut,
            icon: const Icon(
              Icons.logout_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TimeTable()),
              );
            },
            icon: const Icon(Icons.event_available),
            label: const Text(
              'Time Table',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExamSchedule()),
              );
            },
            icon: const Icon(Icons.schedule),
            label: const Text(
              'Examination Schedule',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlacementPage()),
              );
            },
            icon: const Icon(Icons.currency_rupee),
            label: const Text(
              'Placement @ IIIT Bhagalpur',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Documents()),
              );
            },
            icon: const Icon(Icons.description),
            label: const Text(
              'Apply for Documents',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Academics()),
                );
              },
              icon: const Icon(Icons.auto_stories),
              label: const Text(
                'Academics',
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
          TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LibraryPage()),
                );
              },
              icon: const Icon(Icons.description),
              label: const Text(
                'Library',
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
        ],
      ),
    );
  }
}
