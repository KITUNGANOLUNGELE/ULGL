import 'package:flutter/material.dart';
import 'package:new_project/App/components/text_field.dart';
import 'package:new_project/App/layouts/app_bar.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const AppBarClasse(
        titre: "CONNEXION",
        couleurDeFond: Colors.blue,
        textStyle: TextStyle(
            color: const Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
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
                const AppTextField(hint: "Renseignez votre nom"),
                const Spacer(),
                const AppTextField(hint: "Renseignez postnom"),
                const Spacer(),
                const AppTextField(hint: "Renseignez votre prenom"),
                const Spacer(),
                const AppTextField(hint: "Renseignez votre âge"),
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
                      "Soumettre",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
