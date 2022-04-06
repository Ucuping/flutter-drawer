import 'package:example/home.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(MaterialApp(
    title: "Belajar Drawer",
    home: Home(),
  ));
}

// class BelajarNavigationDrawer extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Belajar Drawer Nav")),
//       drawer: MyDrawer(),
//       // endDrawer: MyDrawer(),
//       body: MyDrawer.pages[MyDrawer.activePage],
//     );
//   }
// }
