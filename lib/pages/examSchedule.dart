import 'package:collegeapp/functions/button.dart';
import 'package:flutter/material.dart';

class ExamSchedule extends StatefulWidget {
  const ExamSchedule({Key? key}) : super(key: key);

  @override
  State<ExamSchedule> createState() => _ExamScheduleState();
}

class _ExamScheduleState extends State<ExamSchedule> {
  String selectedbatch = '2021-25';

  String selectedbranch = 'B.Tech(Computer Science & Engineering)';

  String selected_batch_branch = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "IIIT Bhagalpur Exam Schedule",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color(0xff9C2040),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "End Semester Spring'23 Exam Schedule",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(20),
              child: DropdownButton<String>(
                dropdownColor: Colors.grey.shade200,
                isExpanded: true,
                value: selectedbatch,
                icon: const Icon(Icons.arrow_circle_down_rounded),
                onChanged: (String? newvalue) {
                  setState(() {
                    selectedbatch = newvalue!;
                  });
                },
                items: <String>[
                  '2020-24',
                  '2021-25',
                  '2022-26',
                  '2023-27',
                  '2022-24',
                  '2023-25'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(20),
            child: DropdownButton<String>(
              dropdownColor: Colors.grey.shade200,
              isExpanded: true,
              value: selectedbranch,
              icon: const Icon(Icons.arrow_circle_down_rounded),
              onChanged: (String? newvalue) {
                setState(() {
                  selectedbranch = newvalue!;
                });
              },
              items: <String>[
                'B.Tech(Computer Science & Engineering)',
                'B.Tech(Electronics & Communication Engineering)',
                'B.Tech(Mechatronics and Automation Engineering)',
                'B.Tech(Mathematics and Computing)',
                'M.Tech (Artificial Intelligence and Data Science)',
                'M.Tech (Signal Processing and Machine Learning)',
                'M.Tech (VLSI and Embedded Systems)',
                'M.Tech (Microwave and Communication Systems)',
                'M.Tech (Electrical Vehicle Technology)'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value, child: Text(value));
              }).toList(),
            ),
          ),
          TextButton(
            style: buttonPrimary,
            onPressed: () {
              if (selectedbatch == '2021-25' && selectedbranch == 'CSE') {
                selected_batch_branch = '$selectedbatch $selectedbranch';
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(selected_batch_branch),
                    content: InteractiveViewer(
                      clipBehavior: Clip.none,
                      child: Image.asset('assets/2025cse.jpeg'),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                );
              } else if (selectedbatch == '2021-25' &&
                  selectedbranch == 'ECE') {
                selected_batch_branch = '$selectedbatch $selectedbranch';
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(selected_batch_branch),
                    content: InteractiveViewer(
                      clipBehavior: Clip.none,
                      child: Image.asset('assets/2025cse.jpeg'),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                );
              } else {
                selected_batch_branch = '$selectedbatch $selectedbranch';
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(selected_batch_branch),
                    content: InteractiveViewer(
                      clipBehavior: Clip.none,
                      child: Image.asset('assets/2025cse.jpeg'),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                );
              }
            },
            child: const Text(
              'Submit',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  backgroundColor: Color(0xff9C2040),
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
