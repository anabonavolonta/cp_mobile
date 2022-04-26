import 'package:flutter/material.dart';
import 'package:perfil_bottom_navigation_bar/pages/formacao.dart';
import 'package:perfil_bottom_navigation_bar/pages/experiencia.dart';

class Pessoal extends StatefulWidget {
  const Pessoal({Key? key}) : super(key: key);

  @override
  _PessoalState createState() => _PessoalState();
}

class _PessoalState extends State<Pessoal> {
  int _currentPage = 0;

/*  _foto() {
    return Center(
      child: Image.network(
          "https://i.pinimg.com/originals/f5/ad/56/f5ad565616004ad3f3464812dacae59c.jpg"),
    );
  }
*/
  final telas = [
    Center(
        child: Text(
      'Bem-vindo ao meu perfil!' +
          "\n" +
          "Me chamo Ana Carolina," +
          "\n" +
          "tenho 29 anos e" +
          "\n" +
          "sou mãe de gatos.",
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
        backgroundColor: Colors.white,
        body: telas[_currentPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPage,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(103, 38, 186, 231),
          //iconSize: 20,
          //selectedFontSize: 20,
          //unselectedFontSize: 10,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert_sharp),
              label: 'Formação',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'Experiência',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Meu Perfil"),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 5, 5, 5),
    );
  }
}
