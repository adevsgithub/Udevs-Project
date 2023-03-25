import 'package:flutter/material.dart';

enum TaskCategory { personal, work, meeting, shopping, party, study }

class Task {
  final String title;
  final TimeOfDay time;
  final TaskCategory category;

  Task({
    required this.title,
    this.time = const TimeOfDay(hour: 00, minute: 00),
    this.category = TaskCategory.personal,
  });
}
