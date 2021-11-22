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
  static const Color primary = Color(0xFF003e70);
}
// End theme

class Main extends StatelessWidget {
  Main({Key? key}) : super(key: key);

  MaterialColor primarySwatch = generateMaterialColor(Palette.primary);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      theme: ThemeData(
        primarySwatch: primarySwatch,
      ),
      home: HomePage(),
    );
  }
}
