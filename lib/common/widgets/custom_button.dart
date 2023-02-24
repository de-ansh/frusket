import 'package:flutter/material.dart';

class CustomBUtton extends StatelessWidget {
  final String title;
 final  VoidCallback ontap;
  const CustomBUtton({super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      child: Text(title),
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50)),
    );
  }
}
