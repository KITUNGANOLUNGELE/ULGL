import 'package:flutter/material.dart';
import 'package:new_project/App/components/text_field.dart';
import 'package:new_project/App/layouts/app_bar.dart';

class CalculScreen extends StatefulWidget {
  const CalculScreen({super.key});

  @override
  State<CalculScreen> createState() => _CalculScreenState();
}

class _CalculScreenState extends State<CalculScreen> {
  TextEditingController nombre1 = TextEditingController();
  TextEditingController nombre2 = TextEditingController();
  String resultat = "";

  @override
  void initState() {
    super.initState();
    setState(() {
      resultat = "Le resultat s'affiche ici";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBarClasse(
        titre: "Calcules",
        couleurDeFond: Colors.red,
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        appActions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          AppTextField(
            hint: "nombre 1",
            controller: nombre1,
          ),
          AppTextField(
            hint: "nombre 2",
            controller: nombre2,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  resultat = " le quotient est : ${quotient(
                    double.parse(nombre1.text.toString()),
                    double.parse(nombre2.text.toString()),
                  )} \n le produit est : ${produit(
                    double.parse(nombre1.text.toString()),
                    double.parse(nombre2.text.toString()),
                  )} \n la somme est : ${add(
                    double.parse(nombre1.text.toString()),
                    double.parse(nombre2.text.toString()),
                  )} \n la difference est : ${difference(
                    double.parse(nombre1.text.toString()),
                    double.parse(nombre2.text.toString()),
                  )}";
                  nombre1 =
                      TextEditingController.fromValue(TextEditingValue.empty);
                  nombre2 =
                      TextEditingController.fromValue(TextEditingValue.empty);
                });
              },
              child: const Text("Calculer")),
          const Spacer(),
          Center(
            child: Text(resultat),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  double difference(a, b) {
    double max = a > b ? a : b;
    double min = a < b ? a : b;
    return max - min;
  }

  double add(a, b) {
    return a + b;
  }

  double produit(a, b) {
    return a * b;
  }

  double quotient(a, b) {
    double max = a > b ? a : b;
    double min = a < b ? a : b;
    return max / min;
  }
}
