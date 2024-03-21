import 'package:flutter/material.dart';
import 'package:acevedo0425/pantallas0425/panel0425/widgets0425/panel_pantalla0425.dart';

void main() => runApp(MiAppHerramientas());

class MiAppHerramientas extends StatelessWidget {
  const MiAppHerramientas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Arellano Ferreteria 0429",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true),
      home: PanelPantalla0425(),
    );
  }
}
