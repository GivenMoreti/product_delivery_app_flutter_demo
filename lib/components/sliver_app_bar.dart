import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color(0xFF008000),
      foregroundColor: Colors.white,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      title: title,
      actions: [
        IconButton(
          onPressed: () {
            //take user to cart
          },
          icon: Icon(Icons.shopping_cart_rounded),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(20),
        background: Padding(
          padding: const EdgeInsets.all(20),
          child: child,
        ),
      ),
    );
  }
}
