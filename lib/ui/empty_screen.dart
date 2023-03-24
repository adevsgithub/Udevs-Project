import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: MainTabsPage(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: myAppbar(),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 180),
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
          SizedBox(
            height: 40.h,
          ),
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
      titleSpacing: 0,
      toolbarHeight: 80.h,
      automaticallyImplyLeading: false,
      flexibleSpace: Image(
        image: const AssetImage(
          'assets/images/appbar_beck.png',
        ),
        height: 200.h,
        fit: BoxFit.cover,
      ),
      title: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: const Text(
          'Hello Brenda!\nToday you have 9 tasks',
        ),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      actions: [
        const Padding(
          padding: EdgeInsets.only(right: 20, top: 10),
          child: CircleAvatar(
            maxRadius: 24,
            backgroundColor: Colors.white,
          ),
        ),
      ],
    );
  }

  Container bottomNavigatorBar() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
            // top: BorderSide(color: Color(0xffE2E6E8), width: 1),
            ),
      ),
      height: 94.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xff06AB8D),
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
