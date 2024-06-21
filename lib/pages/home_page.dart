import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/drawer_list_tile.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/pages/auth/login_page.dart';
import 'package:food_delivery_app/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Column(
        children: [
          //custom app bar
          Text("something now"),
          //something

          //something
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}
