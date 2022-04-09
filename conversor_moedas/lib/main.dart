import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app/models/views/home_view.dart';

mais() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomeView(),
    );
  }
}
