import 'package:aula02/ui/widgets/campo_texto.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController gasolinaController = TextEditingController();
  final TextEditingController etanolController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(Icons.calculate_outlined, color: Colors.white,),
              SizedBox(width: 8),
              Text('Etanol x Gasolina', style: TextStyle(color: Colors.white),),
            ],
          ),
          backgroundColor: Colors.blueAccent.shade200
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CampoTexto(gasolinaController,'Gasolina', 'R\$'),
            CampoTexto(etanolController,'Etanol', 'R\$'),
            ElevatedButton(onPressed: calcular, child: const Text("Calcular"))
          ]
        ),
      ),
    );
  }

  void calcular() {
    final valorGasolina = double.parse(gasolinaController.text);
    final valorEtanol = double.parse(etanolController.text);

    if(valorEtanol <= (valorGasolina * 0.7)){
      //etanol
    }
      //Gasolina melhor

  }

}
