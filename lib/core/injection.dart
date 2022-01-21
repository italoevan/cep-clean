import 'package:cep_poc/data/datasources/get_cep_datasource/get_cep_datasource.dart';
import 'package:cep_poc/data/datasources/get_cep_datasource/get_cep_datasource_impl.dart';
import 'package:cep_poc/data/repositories/get_cep_repositories/get_cep_repository_impl.dart';
import 'package:cep_poc/domain/repositories/get_cep_repositories/get_cep_repository.dart';
import 'package:cep_poc/domain/usecases/get_cep_usecases/get_cep_usecase.dart';
import 'package:cep_poc/domain/usecases/get_cep_usecases/get_cep_usecase_impl.dart';
import 'package:cep_poc/presenter/pages/home_controller.dart';
import 'package:cep_poc/utils/web_client.dart';
import 'package:get_it/get_it.dart';

abstract class Injection {
  static void init() {
    var instance = GetIt.instance;

    instance.registerLazySingleton<WebClient>(() => WebClientImpl());
    instance.registerLazySingleton<GetCepDataSource>(
        () => GetCepDataSourceImpl(instance.get()));
    instance.registerLazySingleton<GetCepRepository>(
        () => GetCepRepositoryImpl(dataSource: instance.get()));
    instance.registerLazySingleton<GetCepUsecase>(
        () => GetCepUsecaseImpl(instance.get()));
    instance.registerFactory<HomeController>(
        () => HomeControllerImpl(instance.get()));
  }
}
