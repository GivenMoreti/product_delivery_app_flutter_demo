import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_text_field.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:food_delivery_app/themes/dark_mode.dart';

class LoginPage extends StatefulWidget {
  //handles on tap functionality
  final void Function()? onTap;
  //
  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //controllers
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  //login user

  void login() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        print("logged in");
        return HomePage();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 60,
            ),

            // title

            Text(
              "Food delivery App",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            //email
            MyTextField(
                controller: email, hintText: "email", obscureText: false),

            //password
            MyTextField(
                controller: password, hintText: "Password", obscureText: true),

            //login button
            MyButton(
              btnTitle: "Login",
              onTap: () {
                login();
              },
            ),

            //alternatives
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Don't have account?"),
                ),
                GestureDetector(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  onTap: widget.onTap,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
