import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udevs_project/ui/button/my-elevetd_btn.dart';

import 'dot-conteiner.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({
    super.key,
  });

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

String selectedValue = 'ayol';

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 700,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Add new task',
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    // fillColor: const Color(0xFFF0F0F0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                const Divider(endIndent: 0, indent: 0, thickness: 1),
                SizedBox(
                  height: 30,
                  child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const MyConteiner1(),
                          const MyConteiner2(),
                          const MyConteiner3(),
                          const MyConteiner4(),
                          const MyConteiner5(),
                          const MyConteiner6(),
                        ],
                      );
                    },
                  ),
                ),
                const Divider(endIndent: 0, indent: 0, thickness: 1),
                _myDropDown(context),
                SizedBox(
                  height: 260.h,
                ),
                MyElevetedBtn(
                  title: 'Add task',
                  onPressed: () {},
                  colors: Color(0xFF7EB6FF),
                ),
              ],
            ),
          ),
          Positioned(
            // top: 120,
            bottom: 670,
            // height: 20,
            child: Image.asset(
              'assets/icons/x_ic.png',
              fit: BoxFit.cover,
              cacheHeight: 100,
              cacheWidth: 100,
              width: 80,
              height: 80,
            ),
          ),
        ],
      ),
    );
  }

  _myDropDown(BuildContext context) {
    return DropdownButton(
      underline: SizedBox(),
      value: selectedValue,
      isExpanded: true,
      hint: Text(
        'Jinsi',
        style: TextStyle(fontSize: 14, color: Theme.of(context).hintColor),
      ),
      items: [
        DropdownMenuItem(
          value: 'ayol',
          child: Text('Ayol', style: const TextStyle(fontSize: 14)),
        ),
        DropdownMenuItem(
          value: 'erkak',
          child: Text('Erkak', style: const TextStyle(fontSize: 14)),
        ),
      ],
      onChanged: (Object? value) {},
    );
  }
}
