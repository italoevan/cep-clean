import 'package:dartz/dartz.dart';

abstract class GetCepDataSource {
  Future<Either<Exception, Map<String, dynamic>>> getCep(String cep);
}
