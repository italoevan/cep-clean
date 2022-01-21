import 'package:cep_poc/domain/usecases/get_cep_usecases/get_cep_usecase.dart';
import 'package:cep_poc/presenter/pages/cep_information/cep_information_page.dart';
import 'package:flutter/material.dart';

abstract class HomeController {
  Future getCep(BuildContext context);
  TextEditingController getCepTextController();
  ValueNotifier isLoading();
}

class HomeControllerImpl implements HomeController {
  final GetCepUsecase usecase;
  final TextEditingController _cepController = TextEditingController();
  final ValueNotifier _isLoading = ValueNotifier(false);

  HomeControllerImpl(this.usecase);

  @override
  TextEditingController getCepTextController() {
    return _cepController;
  }

  @override
  Future getCep(BuildContext context) async {
    _isLoading.value = true;
    var response = await usecase.getCep(_cepController.text);

    response.fold(
        (l) => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Invalid Cep"))),
        (entity) => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CepInformationPage(entity: entity))));
    _isLoading.value = false;
  }

  @override
  ValueNotifier isLoading() {
    return _isLoading;
  }
}
