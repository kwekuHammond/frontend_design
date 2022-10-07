import 'package:flutter/material.dart';
import 'package:frontend_design/components/Route.dart';
import 'package:frontend_design/views/list.dart';
import 'package:frontend_design/views/login.dart';

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
                  onPressed: () async {
                    await Navigator.of(context)
                        .push(createRoute(const LoginView()));
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
                  onPressed: () async {
                    await Navigator.of(context)
                        .push(createRoute(const ListItems()));
                  },
                  child: const Text("List View"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
