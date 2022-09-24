import 'package:flutter/material.dart';
import 'package:frontend_design/constants/routes.dart';
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 88, 126),
        centerTitle: true,
        title: const Text("My UI Design"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(loginUIRoute);
                  },
                  child: const Text("Login UI"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Other View"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
