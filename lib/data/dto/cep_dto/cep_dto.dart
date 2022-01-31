import 'package:cep_poc/domain/entities/cep_entity.dart';


extension CepDto on CepEntity {
  static CepEntity fromJson(Map<String, dynamic> map) {
    return CepEntity(
        cep: map['cep'],
        logradouro: map['logradouro'],
        complemento: map['complemento'],
        bairro: map['bairro'],
        localidade: map['localidade'],
        uf: map['uf'],
        ibge: map['ibge'],
        gia: map['gia'],
        ddd: map['ddd'],
        siafi: map['siafi']);
  }
}


