import 'package:cep_poc/domain/entities/cep_entity.dart';
import 'package:flutter/material.dart';
import '../../../utils/selectable_extension.dart';
import '../../../data/dto/cep_dto/cep_dto.dart';

class CepInformationPage extends StatelessWidget {
  final CepEntity entity;
  const CepInformationPage({Key? key, required this.entity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informações do cep"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Cep:  ${entity.cep} ",
            ).selectable(),
            Text("Bairro: ${entity.bairro}").selectable(),
            Text("Rua: ${entity.logradouro}").selectable()
          ],
        ),
      ),
    );
  }
}
