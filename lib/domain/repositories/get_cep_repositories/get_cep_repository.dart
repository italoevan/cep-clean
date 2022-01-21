import 'package:cep_poc/domain/entities/cep_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCepRepository {
  Future<Either<Exception, CepEntity>> getCep(String url);

}
