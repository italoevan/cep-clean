import 'package:cep_poc/domain/entities/cep_entity.dart';
import 'package:flutter/material.dart';

class CepInformationPage extends StatelessWidget {
  final CepEntity entity;
  const CepInformationPage({Key? key, required this.entity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informações do cep"),
      ),
      body: Column(
        children: [SelectableText("Cep:  ${entity.cep} ")],
      ),
    );
  }
}
