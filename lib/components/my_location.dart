import 'package:flutter/material.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          //address title
          Text(
            "5580 Ave",
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 14,
            ),
          ),

          //arrow next to address
          Icon(
            Icons.keyboard_arrow_down,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
