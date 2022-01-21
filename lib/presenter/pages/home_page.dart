import 'package:cep_poc/presenter/pages/home_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = GetIt.instance.get();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: controller.isLoading(),
      builder: (context, value, child) => Stack(
        children: [
          Center(
            child: Visibility(
              child: const CircularProgressIndicator(),
              visible: value as bool,
            ),
          ),
          Column(
            children: [
              TextField(
                controller: controller.getCepTextController(),
              ),
              ElevatedButton(
                child: const Text("Search"),
                onPressed: () => controller.getCep(context),
              )
            ],
          )
        ],
      ),
    ));
  }
}
