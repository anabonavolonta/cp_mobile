import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  const Experiencia({Key? key}) : super(key: key);

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
      title: Text("Experiencia"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
    );
  }

  _texto() {
    return Center(
        child: Text(
      "UX/UI Designer na CERC",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 25.0),
    ));
  }
}
