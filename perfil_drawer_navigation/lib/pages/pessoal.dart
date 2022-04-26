import 'package:flutter/material.dart';
import 'package:perfil_drawer_navigation/pages/Formacao.dart';
import 'package:perfil_drawer_navigation/pages/Experiencia.dart';

class Pessoal extends StatefulWidget {
  const Pessoal({Key? key}) : super(key: key);

  @override
  _PessoalState createState() => _PessoalState();
}

class _PessoalState extends State<Pessoal> {
  int _currentPage = 0;

  final telas = [
    Center(
        child: Text(
      'Bem-vindo ao meu perfil' +
          "\n" +
          "Me chamo Ana Carolina" +
          "\n" +
          "Tenho 29 anos e" +
          "\n" +
          "sou mãe de gatos",
      style: TextStyle(
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    )),
    Formacao(),
    Experiencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Color.fromARGB(255, 143, 197, 228),
        body: telas[_currentPage],
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Ana Carolina'),
              accountEmail: Text('anac.bonavolonta@gmail.com'),
              currentAccountPicture: CircleAvatar(
                //backgroundImage: AssetImage('assets/images/rock2.jpg'),
                backgroundImage: NetworkImage(
                    'https://pps.whatsapp.net/v/t61.24694-24/217445023_400278891847855_7202842309443417668_n.jpg?ccb=11-4&oh=57e3d60ed76312566ed3ebdd6fd5d7b4&oe=6279DAB9'),
              ),
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Pessoal'),
              onTap: () {
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Formação'),
              onTap: () {
                setState(() {
                  _currentPage = 1;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Experiência'),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
          ],
        )),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Meu Perfil"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
    );
  }
}
