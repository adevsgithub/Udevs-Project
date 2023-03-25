import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udevs_project/ui/categories_screen.dart';
import 'package:udevs_project/ui/task-list.dart';

import 'alert-dialog.dart/alert-dialog.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen(this.pressed, {super.key});
  final bool pressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: pressed ? Size.fromHeight(80.h) : Size.fromHeight(220.h),
        child: myAppbar(),
      ),
      body: 3 == 3
          ? const MyListTask()
          : Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 100),
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/note_im.png',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Text(
                  'No tasks',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(
                      0xFF554E8F,
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  AppBar myAppbar() {
    return AppBar(
      backgroundColor: Color(0xFF81C7F5),
      titleSpacing: 0,
      toolbarHeight: 220.h,
      automaticallyImplyLeading: false,
      flexibleSpace: Image(
        image: const AssetImage(
          'assets/images/appbar_beck.png',
        ),
        height: 400.h,
        fit: BoxFit.cover,
      ),
      title: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Hello Brenda!\nToday you have 9 tasks',
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 20, top: 10),
                  child: CircleAvatar(
                    maxRadius: 24,
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const MyAlertDialog()
          ],
        ),
      ),
    );
  }

  Container bottomNavigatorBar() {
    return Container(
      height: 94.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xff06AB8D),
              borderRadius: BorderRadius.circular(62),
            ),
            height: 50.h,
            width: 160.w,
            child: const Text(
              'Позвонить',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white),
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffFFB039),
              borderRadius: BorderRadius.circular(62),
            ),
            height: 50.h,
            width: 160.w,
            child: const Text(
              'Написать',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
