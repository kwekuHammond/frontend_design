import 'package:flutter/material.dart';
import 'package:frontend_design/constants/routes.dart';
import 'package:frontend_design/views/home.dart';
import 'package:frontend_design/views/login.dart';

void main() {
  runApp(MaterialApp(
    title: 'UI Design',
    theme: ThemeData(primaryColor: const Color.fromARGB(255, 11, 88, 126)),
    home: const HomePage(),
    routes: {
      loginUIRoute: (context) => const LoginView(),
    },
  ));
}
