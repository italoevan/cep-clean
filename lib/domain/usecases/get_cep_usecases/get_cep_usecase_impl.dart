import 'package:cep_poc/domain/entities/cep_entity.dart';
import 'package:cep_poc/domain/repositories/get_cep_repositories/get_cep_repository.dart';
import 'package:cep_poc/domain/usecases/get_cep_usecases/get_cep_usecase.dart';
import 'package:dartz/dartz.dart';

class GetCepUsecaseImpl implements GetCepUsecase {
  final GetCepRepository repository;

  GetCepUsecaseImpl(this.repository);

  @override
  Future<Either<Exception, CepEntity>> getCep(String cep) async {
    return await repository.getCep(cep);
  }
}
