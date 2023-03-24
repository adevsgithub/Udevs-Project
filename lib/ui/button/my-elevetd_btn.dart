// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyElevetedBtn extends StatelessWidget {
  const MyElevetedBtn({super.key, required this.title, required this.onPressed, required this.colors});
  final String title;
  final VoidCallback onPressed;
  final Color colors;

  static const routeName = '/ontap1';
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: btmStyle(),
      onPressed: onPressed,
      child: Text(title),
    );
  }

  ButtonStyle btmStyle() {
    return ElevatedButton.styleFrom(
      minimumSize: const Size(400, 66),
      backgroundColor: colors,
      fixedSize: const Size(
        double.infinity,
        50,
      ),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
    );
  }
}
