import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset('assets/images/conversor.jpg'),
        Row(
          children: [
            DropdownButton(items: [], onChanged: (value) {}),
            TextField(),
          ],
        ),
        ButtonBar(OnPressed: () {},
         child: Text('CONVERTER')),
      ],
    ));
  }
}
