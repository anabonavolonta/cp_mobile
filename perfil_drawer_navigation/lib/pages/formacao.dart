import 'package:flutter/material.dart';

class Formacao extends StatelessWidget {
  const Formacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Color.fromARGB(255, 143, 197, 228),
      body: _texto(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Formação"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
    );
  }

  _texto() {
    return Center(
        child: Text(
      "Sistemas para Internet | FIAP | 2021 - 2022",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 20.0),
    ));
  }
}
