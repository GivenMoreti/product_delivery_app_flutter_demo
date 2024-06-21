import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
//constrollers
  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.app_registration_rounded,
              size: 60,
            ),
            SizedBox(height: 10),
            // title
            Text(
              "Sign up",
              style: TextStyle(
                fontSize: 30,
              ),
            ),

            //username
            MyTextField(
                controller: username, hintText: "username", obscureText: false),
            //password
            MyTextField(
                controller: password, hintText: "Password", obscureText: true),
            //confirm password
            MyTextField(
                controller: confirmPassword,
                hintText: "Confirm password",
                obscureText: true),

            //sign up button
            MyButton(
              btnTitle: "Register",
              onTap: () {},
            ),

            //alternatives
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Have account?"),
                ),
                GestureDetector(
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
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
