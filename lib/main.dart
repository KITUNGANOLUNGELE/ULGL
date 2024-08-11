import 'package:flutter/material.dart';
import 'package:new_project/App/pages/apitest_screen.dart';
import 'package:new_project/App/pages/calcul_screen.dart';
import 'package:new_project/App/pages/home_screen.dart';
import 'package:new_project/App/pages/login_screen.dart';
import 'package:new_project/App/pages/sign_up.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/login": (context) => const LoginScreen(),
        "/signup": (context) => const SignUp(),
        "/calcul": (context) => const CalculScreen(),
        "/api": (context) => const ApitestScreen(),
      },
    );
  }
}

// class MainApp extends StatefulWidget {
//   const MainApp({super.key});

//   @override
//   State<MainApp> createState() => _MainAppState();
// }

// class _MainAppState extends State<MainApp> {
//   Menus currentPage = Menus.home;
//   double opacity = 1;
//   List<Color> colors = [Colors.black, Colors.white, Colors.amber, Colors.red];
//   int chosen = 0;
//   Color col = Colors.black;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
//       home: Scaffold(
//           extendBody: true,
//           appBar: AppBar(
//             title: const Text(
//               "Help app",
//               style:
//                   TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
//             ),
//             actions: [
//               PopupMenuButton(itemBuilder: (context) {
//                 return [
//                   const PopupMenuItem(
//                     child: Text(
//                       "Modifier",
//                       style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.normal,
//                           color: Colors.amber),
//                     ),
//                   ),
//                   const PopupMenuItem(
//                     child: Text(
//                       "Mettre a jour",
//                       style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.normal,
//                           color: Colors.amber),
//                     ),
//                   )
//                 ];
//               })
//             ],
//           ),
//           body: Column(
//             children: [
//               Center(
//                 child: Text("${currentPage.index}"),
//               ),
//               Center(
//                 child: GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       if (chosen == colors.length - 1) {
//                         chosen = 0;
//                         opacity = 0;
//                       } else {
//                         chosen = chosen + 1;
//                         opacity = 1;
//                       }
//                     });
//                     setState(() {
//                       col = colors[chosen];
//                       print(col);
//                     });
//                   },
//                   child: Container(
//                     height: 80,
//                     width: 80,
//                     decoration: BoxDecoration(color: col),
//                   ),
//                 ),
//               ),
//               Center(
//                 child: AnimatedOpacity(
//                     duration: const Duration(seconds: 1),
//                     opacity: opacity,
//                     child: Text(
//                       "Hello word",
//                       style: TextStyle(
//                         color: col,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 100,
//                         fontFamily: "Poppins",
//                       ),
//                     )),
//               )
//             ],
//           ),
//           bottomNavigationBar: Maclasse(
//             number: currentPage,
//             onTap: (Menus value) {
//               print(value);
//               setState(() {
//                 currentPage = value;
//               });
//             },
//           )),
//     );
//   }

//   List<Widget> pages = [
//     Text("home"),
//     Text("favorite"),
//     Text("add"),
//     Text("message"),
//   ];
// }

// class Maclasse extends StatelessWidget {
//   final Menus number;
//   final ValueChanged<Menus> onTap;
//   const Maclasse({super.key, required this.number, required this.onTap});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.amber,
//       height: 80,
//       child: Row(
//         children: <Widget>[
//           ElevatedButton(
//               onPressed: () => onTap(Menus.add), child: const Text("add")),
//           ElevatedButton(
//               onPressed: () => onTap(Menus.favorite),
//               child: const Text("favorite"))
//         ],
//       ),
//     );
//   }
// }

// enum Menus { home, favorite, add, message }

// Future<void> getUtilisateur() async {
//   var response = await get(Uri.parse("lien"));
//   print(response.body);
// }
