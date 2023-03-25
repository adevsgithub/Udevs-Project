import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udevs_project/constants/app_colors.dart';

class MyConteiner1 extends StatefulWidget {
  const MyConteiner1({super.key});

  @override
  State<MyConteiner1> createState() => _MyConteiner1State();
}

Color _color = Colors.transparent;

class _MyConteiner1State extends State<MyConteiner1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        // clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // <= No more error here :)
              color: Colors.amber,
            ),
            height: 8.h,
            width: 8.w,
          ),
          GestureDetector(
            onTap: () {
              if (_color == Colors.transparent) {
                setState(() {
                  _color = Colors.amber;
                });
              } else if (_color == Colors.amber) {
                setState(() {
                  _color = Colors.transparent;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: _color,
              ),
              height: 50.h,
              width: 50.w,
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Personal',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyConteiner2 extends StatefulWidget {
  const MyConteiner2({super.key});

  @override
  State<MyConteiner2> createState() => _MyConteiner2State();
}

class _MyConteiner2State extends State<MyConteiner2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        // clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // <= No more error here :)
              color: Colors.green,
            ),
            height: 8.h,
            width: 8.w,
          ),
          GestureDetector(
            onTap: () {
              if (_color == Colors.transparent) {
                setState(() {
                  _color = Colors.green;
                });
              } else if (_color == Colors.green) {
                setState(() {
                  _color = Colors.transparent;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: _color,
              ),
              height: 50.h,
              width: 50.w,
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  '   Work   ',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyConteiner3 extends StatefulWidget {
  const MyConteiner3({super.key});

  @override
  State<MyConteiner3> createState() => _MyConteiner3State();
}

class _MyConteiner3State extends State<MyConteiner3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        // clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            height: 8.h,
            width: 8.w,
          ),
          GestureDetector(
            onTap: () {
              if (_color == Colors.transparent) {
                setState(() {
                  _color = Colors.red;
                });
              } else if (_color == Colors.red) {
                setState(() {
                  _color = Colors.transparent;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: _color,
              ),
              height: 50.h,
              width: 50.w,
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Meeting',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyConteiner4 extends StatefulWidget {
  const MyConteiner4({super.key});

  @override
  State<MyConteiner4> createState() => _MyConteiner4State();
}

class _MyConteiner4State extends State<MyConteiner4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        // clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.darkBlue,
            ),
            height: 8.h,
            width: 8.w,
          ),
          GestureDetector(
            onTap: () {
              if (_color == Colors.transparent) {
                setState(() {
                  _color = AppColors.darkBlue;
                });
              } else if (_color == AppColors.darkBlue) {
                setState(() {
                  _color = Colors.transparent;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: _color,
              ),
              height: 50.h,
              width: 50.w,
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Study',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyConteiner5 extends StatefulWidget {
  const MyConteiner5({super.key});

  @override
  State<MyConteiner5> createState() => _MyConteiner5State();
}

class _MyConteiner5State extends State<MyConteiner5> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        // clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 244, 120, 54),
            ),
            height: 8.h,
            width: 8.w,
          ),
          GestureDetector(
            onTap: () {
              if (_color == Colors.transparent) {
                setState(() {
                  _color = const Color.fromARGB(255, 244, 120, 54);
                });
              } else if (_color == const Color.fromARGB(255, 244, 120, 54)) {
                setState(() {
                  _color = Colors.transparent;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: _color,
              ),
              height: 50.h,
              width: 50.w,
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Shopping',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyConteiner6 extends StatefulWidget {
  const MyConteiner6({super.key});

  @override
  State<MyConteiner6> createState() => _MyConteiner6State();
}

class _MyConteiner6State extends State<MyConteiner6> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        // clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple,
            ),
            height: 8.h,
            width: 8.w,
          ),
          GestureDetector(
            onTap: () {
              if (_color == Colors.transparent) {
                setState(() {
                  _color = Colors.purple;
                });
              } else if (_color == Colors.purple) {
                setState(() {
                  _color = Colors.transparent;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: _color,
              ),
              height: 50.h,
              width: 50.w,
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Party',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
