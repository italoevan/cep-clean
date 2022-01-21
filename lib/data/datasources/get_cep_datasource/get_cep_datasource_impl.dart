import 'dart:convert';

import 'package:cep_poc/core/values/endpoints/cep_endpoints.dart';
import 'package:cep_poc/data/datasources/get_cep_datasource/get_cep_datasource.dart';
import 'package:cep_poc/utils/web_client.dart';
import 'package:dartz/dartz.dart';

class GetCepDataSourceImpl implements GetCepDataSource {
  final WebClient webClient;

  GetCepDataSourceImpl(this.webClient);

  @override
  Future<Either<Exception, Map<String, dynamic>>> getCep(String cep) async {
    try {
      var response = await webClient.get(url: CepEndpoints.getCep(cep));
      return Right(jsonDecode(response.body));
    } catch (e) {
      return Left(Exception());
    }
  }
}

