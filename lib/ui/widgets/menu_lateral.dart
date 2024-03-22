import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MenuLateral extends StatelessWidget {
  final List<Map> listaItens;

  const MenuLateral({ required this.listaItens, super.key });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _criarHeadr(),
          _criarListItens(context)
        ],
      ),
    );
  }

  Widget _criarHeadr(){
    return const DrawerHeader(child: Column(
      children: [
        Icon(Ionicons.car_sport, size: 80),
        Text("Gasolina X Etanol")
      ],
    ));
  }
  Widget _criarListItens(BuildContext context){
    List<Widget> lista = [];
    for(var item in listaItens){
      lista.add(ListTile(
        title: Text(item['texto']),
        onTap: item['clique'],
      ));
    }
    return Column( children: lista );
  }
}
