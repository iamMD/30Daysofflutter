import 'package:catelog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Namaste";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),

      // ignore: avoid_unnecessary_containers
      body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
        child: Text("Wellcome to $days of FLUTTER and $name"),
      )),
      drawer: const MyDrawer(),
    );
  }
}
