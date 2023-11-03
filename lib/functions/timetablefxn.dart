import 'package:flutter/material.dart';

class TimeTableFunctions extends StatefulWidget {
  final String selectedbatch;
  final String selectedbranch;
  final String selected_batch_branch;

  const TimeTableFunctions({
    super.key,
    required this.selectedbranch,
    required this.selectedbatch,
    required this.selected_batch_branch,
  });

  @override
  State<TimeTableFunctions> createState() => _TimeTableFunctionsState();
}

class _TimeTableFunctionsState extends State<TimeTableFunctions> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
