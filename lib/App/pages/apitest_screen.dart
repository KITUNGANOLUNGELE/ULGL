import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:new_project/App/layouts/app_bar.dart';

class ApitestScreen extends StatefulWidget {
  const ApitestScreen({super.key});

  @override
  State<ApitestScreen> createState() => _ApitestScreenState();
}

class _ApitestScreenState extends State<ApitestScreen> {
  Future<List<dynamic>> data() async {
    final response = await http
        .get(Uri.parse("http://192.168.106.107:8080/cours/personnes/"));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data;
    } else {
      throw Exception("Failes to load");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const AppBarClasse(titre: "Get data", couleurDeFond: Colors.white),
      body: FutureBuilder(
        future: data(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error : ${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            List<dynamic>? data = snapshot.data;
            return ListView.builder(
                itemCount: data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("$index" + " " + data[index]['nom'].toString()),
                  );
                });
          } else {
            return Text("No data");
          }
        },
      ),
    );
  }
}
