import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_project/App/layouts/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarClasse(
        titre: "ULGL Mobile App",
        couleurDeFond: Color.fromARGB(238, 77, 3, 3),
        textStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Acceuil"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/login");
                },
                child: const Text("Login"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/signup");
                },
                child: const Text("signup"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/calcul");
                },
                child: const Text("Calculs"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/api");
                },
                child: const Text("API"),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
