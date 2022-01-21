import 'package:cep_poc/domain/entities/cep_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCepUsecase {
  Future<Either<Exception, CepEntity>> getCep(String cep);
}
