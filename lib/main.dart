import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      home: HomePage(),
    );
  }
}
