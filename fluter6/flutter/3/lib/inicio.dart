import 'package:dia03062024/creditos.dart';
import 'package:dia03062024/resultado.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  TextEditingController controlador = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Creditos'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Creditos()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controlador,
            onChanged: (String texto) {
              setState(() {});
            },
          ),
          Text(controlador.text),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultado(controlador.text),
                  ),
                );
              },
              child: const Text('Verificar')),
        ],
      ),
    );
  }
}
