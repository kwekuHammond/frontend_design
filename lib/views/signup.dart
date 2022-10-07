import 'package:flutter/material.dart';
import 'package:frontend_design/components/custom_widgets.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/images/signup.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Form(
                child: ListView(
                  shrinkWrap: true,
                  reverse: true,
                  children: [
                    const Text(
                      "Sign Up",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(height: 60),
                    customTextField(screenSize, "Full Name", Icons.person),
                    customTextField(screenSize, "Email", Icons.email),
                    customTextField(screenSize, "Phone Number", Icons.phone),
                    customTextField(screenSize, "Password", Icons.lock),
                    customTextField(screenSize, "Repeat Password", Icons.lock),
                    button(),
                  ].reversed.toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
