import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/task.dart';

List<Task> tasks = [
  Task(title: 'Going to the gym', time: const TimeOfDay(hour: 08, minute: 00)),
  Task(title: 'Having a bath', time: const TimeOfDay(hour: 09, minute: 00)),
  Task(title: 'Have some snack', time: const TimeOfDay(hour: 19, minute: 00)),
];

class MyListTask extends StatelessWidget {
  const MyListTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return MyTask(tasks[index]);
      },
    );
  }
}

class MyTask extends StatelessWidget {
  const MyTask(this.task, {super.key});
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row(
        //   children: const [
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         'Today',
        //         style: TextStyle(
        //           color: Color(
        //             0xFF8B87B3,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          margin: const EdgeInsets.all(10),
          width: 340.w,
          height: 55.h,
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(8)),
                  color: Colors.amber,
                ),
                width: 4.w,
                height: 55.h,
              ),
              SizedBox(width: 10.w),
              const Icon(
                Icons.circle_outlined,
                color: Colors.black38,
              ),
              SizedBox(width: 10.w),
              Text(
                '${task.time.hour}:${task.time.minute}0',
                style: const TextStyle(
                  color: Colors.black26,
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                task.title,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
              const Spacer(),
              SizedBox(width: 70.w),
              const Icon(
                Icons.notifications_rounded,
                color: Colors.black26,
              ),
              SizedBox(width: 10.w),
            ],
          ),
        ),
      ],
    );
  }
}
