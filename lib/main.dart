import 'package:flutter/material.dart';

// Generate swatch color
import 'generate_color.dart';
import 'pages/home.dart';

void main() {
  runApp(Main());
}

// Start theme
final ThemeData theme = ThemeData(
  primarySwatch: generateMaterialColor(Palette.primary),
);

class Palette {
  static const Color primary = Color(0xFFff3d00);
}
// End theme

class Main extends StatelessWidget {
  Main({Key? key}) : super(key: key);

  MaterialColor primarySwatch = generateMaterialColor(Palette.primary);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo App",
      theme: ThemeData(
        fontFamily: "Kanit",
        primarySwatch: primarySwatch,
      ),
      home: HomePage(),
    );
  }
}
