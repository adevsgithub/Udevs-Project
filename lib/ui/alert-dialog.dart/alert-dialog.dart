// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 340.w,
      height: 90.h,
      color: Colors.white24,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Today Reminder', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp)),
              Text('Meeting with client', style: TextStyle(fontSize: 11.sp)),
              Text('13.00 PM', style: TextStyle(fontSize: 11.sp)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Image.asset(
              'assets/icons/bell (1).png',
              cacheHeight: 100,
            ),
          ),
          IconButton(
            padding: const EdgeInsets.only(bottom: 20, left: 20),
            onPressed: () {},
            icon: const Icon(
              Icons.close,
            ),
          ),
        ],
      ),
    );
  }
}
