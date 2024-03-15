
import 'package:aula02/ui/widgets/mensagem_alerta.dart';
import 'package:flutter/widgets.dart';

class CalcularCombustivelBloc {
  var resultado = '';
  final BuildContext context;
  final TextEditingController gasolinaController = TextEditingController();
  final TextEditingController etanolController = TextEditingController();

  CalcularCombustivelBloc(this.context);

   void calcular() {
    final valorGasolina = double.parse(gasolinaController.text);
    final valorEtanol = double.parse(etanolController.text);

    if(valorEtanol <= (valorGasolina * 0.7)) {
      resultado = 'Etanol is melhor';
    }else{
      resultado = 'Gasolina é better';
    }

    MensagemAlerta().show(
      context: context,
      titulo: "Resultado",
      texto: resultado,
    );
   }

}