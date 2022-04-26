import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String mostrarNumero = "";
  String titulo = "Pense em um n° de 0 à 10";

  void _GetNumeroAleatorio() {
    setState(() {
      int numeroAleatorio = new Random().nextInt(11);
      mostrarNumero = '$numeroAleatorio';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Color.fromARGB(255, 50, 35, 133),
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
        title: Text("Jodo do número aleatório"),
        centerTitle: true,
        backgroundColor: Colors.black87);
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _foto(),
          _texto(titulo),
          _botao(),
          _texto(mostrarNumero),
        ],
      ),
    );
  }

  _foto() {
    return Image.network(
      'https://static.apksmods.com/images/en/com.digidust.elokence.akinator.freemium/icon.png',
      //height: 300,
      //width: 300,
      fit: BoxFit.cover,
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.green,
        fontSize: 25.0,
      ),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _GetNumeroAleatorio,
          child: Text("Clique e irei adivinhar",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue[700],
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 25.0, height: 2),
    );
  }
}
