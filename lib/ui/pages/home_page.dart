import 'package:aula02/bloc/calcular_combustivel_block.dart';
import 'package:aula02/ui/widgets/campo_texto.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var calcBloc = CalcularCombustivelBloc(context);
    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.calculate_outlined, color: Colors.white,),
              SizedBox(width: 8),
              Text('Etanol x Gasolina', style: TextStyle(color: Colors.white),),
            ],
          ),
          backgroundColor: Colors.blueAccent.shade200
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              calcBloc.calcular();
            });
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.local_gas_station, color: Colors.white,),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CampoTexto(calcBloc.gasolinaController,'Gasolina', 'R\$'),
            CampoTexto(calcBloc.etanolController,'Etanol', 'R\$'),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    calcBloc.calcular();
                  });
                },
                child: const Text("Calcular")
            ),
            Text(calcBloc.resultado, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold))
          ]
        ),
      ),
    );
  }



}
