import 'package:dia03062024/creditos.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resultado extends StatelessWidget {
  String _textoRecebido;

  Resultado(this._textoRecebido, {super.key});

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
        title: const Text('Resultado'),
      ),
      body: Center(
        child: Column(
          children: [
            criaContainer(_textoRecebido, 20.0, GoogleFonts.sevillana()),
            criaContainer(_textoRecebido, 20.0, GoogleFonts.roboto()),
            criaContainer(_textoRecebido, 20.0, GoogleFonts.sourceCodePro()),
            ElevatedButton(
                onPressed: () {},
                child: Image.asset('assets/imagens/pencil.png'))
            // Image.asset('assets/imagens/pencil.png'),
          ],
        ),
      ),
    );
  }

  Container criaContainer(String texto, double espaco, TextStyle fonte) {
    return Container(
        padding: EdgeInsets.all(espaco), child: criaTexto(texto, fonte));
  }

  Text criaTexto(String texto, TextStyle estilo) {
    return Text(
      texto,
      style: estilo,
    );
  }
}
