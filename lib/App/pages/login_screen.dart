import 'package:flutter/material.dart';
import 'package:new_project/App/components/text_field.dart';
import 'package:new_project/App/layouts/app_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarClasse(
        titre: "CONNEXION",
        couleurDeFond: Colors.blue,
        textStyle: TextStyle(
            color: const Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            const Spacer(),
            const Center(
                child: Text(
              "Login",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
            const Spacer(),
            const AppTextField(hint: "Nom utilisateur"),
            const Spacer(),
            const AppTextField(hint: "mote de passe"),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                ),
                child: const Text(
                  "connexion",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/signup");
              },
              child: const Text("Sign up"),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
