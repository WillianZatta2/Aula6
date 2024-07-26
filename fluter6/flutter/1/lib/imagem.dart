import 'dart:io';
import 'package:flutter/material.dart';

class Imagem extends StatelessWidget {
  const Imagem({Key? key});

  @override
  Widget build(BuildContext context) {
    return ExtrairImagem();
  }

  Image ExtrairImagem() {
    if (Platform.isAndroid) {
      return Image.asset("essets/imagens/android.png");
    } else {
      return Image.asset("essets/imagens/images.png");
    }
  }
}
