import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnTitle;
  final void Function()? onTap;

  const MyButton({super.key, required this.btnTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(20),
        child: Text(
          btnTitle,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
