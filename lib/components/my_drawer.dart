import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/drawer_list_tile.dart';
import 'package:food_delivery_app/pages/driver_page.dart';
import 'package:food_delivery_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.green,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.image,
              size: 40,
              color: Colors.white,
            ),
          ),

          //list tiles

          DrawerListTile(
            tileTitle: "Home",
            onTap: () {
              Navigator.pop(context);
            },
            tileIcon: Icons.home,
          ),
          //Drive today
          DrawerListTile(
              tileTitle: "Drive now",
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DriverPage(),
                  ),
                );
              },
              tileIcon: Icons.person),

          //settings tile
          DrawerListTile(
            tileTitle: "Settings",
            tileIcon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),

          Spacer(),
          //logout tile
          DrawerListTile(
            tileTitle: "Logout",
            onTap: () {},
            tileIcon: Icons.logout,
          ),
          //some spacing
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
