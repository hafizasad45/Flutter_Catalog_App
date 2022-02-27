// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:catalog_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Flutter App"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
