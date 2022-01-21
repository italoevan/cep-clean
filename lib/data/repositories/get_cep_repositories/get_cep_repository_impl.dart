import 'package:cep_poc/data/datasources/get_cep_datasource/get_cep_datasource.dart';
import 'package:cep_poc/data/dto/cep_dto/cep_dto.dart';
import 'package:cep_poc/domain/entities/cep_entity.dart';
import 'package:cep_poc/domain/repositories/get_cep_repositories/get_cep_repository.dart';
import 'package:dartz/dartz.dart';

class GetCepRepositoryImpl implements GetCepRepository {
  final GetCepDataSource dataSource;

  GetCepRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Exception, CepEntity>> getCep(String cep) async {
    var response = await dataSource.getCep(cep);
    return response.fold((l) => Left(l), (r) => Right(CepDto.fromJson(r)));
  }
}
