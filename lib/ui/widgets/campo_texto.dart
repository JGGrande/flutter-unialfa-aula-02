import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {

  final String texto;
  final String prefixo;
  final TextEditingController textoControlador;

  const CampoTexto(this.textoControlador, this.texto, this.prefixo,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: TextField(
          controller: textoControlador,
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: texto,
              prefixText: prefixo
          )
        )
    );
  }

}
