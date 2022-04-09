import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('app04 | Meu Perfil')),
            body: Center(
                child: Text(
                    "Me chamo Ana Carolina Ronqui, tenho 29 anos \n Sou UX/UI Designer na CERC Central de Recebíveis\n Meu grupo ganhou em 2° Lugar o Challenge da FIAP",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center))));
  }
}
