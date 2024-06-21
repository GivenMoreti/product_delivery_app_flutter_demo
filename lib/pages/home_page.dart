import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/drawer_list_tile.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_location.dart';
import 'package:food_delivery_app/components/sliver_app_bar.dart';
import 'package:food_delivery_app/pages/auth/login_page.dart';
import 'package:food_delivery_app/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title 1
                Text(
                  "Eco Dashing Made easy",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 15),
                ),

                //users current location
                MyLocation(),
              ],
            ),
            title: Row(
              children: [
                Text("Bike Bites"),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.pedal_bike,
                  size: 30,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
        body: Container(
          //custom app bar
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("something now"),
          ),

          //something
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
