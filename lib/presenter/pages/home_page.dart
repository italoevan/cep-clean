import 'package:cep_poc/presenter/pages/home_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../utils/screen_utils.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = GetIt.instance.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: controller.isLoading(),
      builder: (context, value, child) => Stack(
        children: [
          _buildContent(),
          Center(
            child: Visibility(
              child: const CircularProgressIndicator(),
              visible: value as bool,
            ),
          ),
        ],
      ),
    ));
  }

  Widget _buildContent() {
    final bool isDesktop = context.width >= 940;

    return isDesktop ? _buildDesktopContent() : _buildMobileContent();
  }

  Widget _buildDesktopContent() {
    return Row(
      children: [
        const Expanded(
            child: Center(
          child: FlutterLogo(
            size: 100,
          ),
        )),
        Expanded(child: _buildSearchArea())
      ],
    );
  }

  Widget _buildMobileContent() {
    return _buildSearchArea();
  }

  Widget _buildSearchArea() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: controller.getCepTextController(),
        ),
        const Divider(
          color: Colors.transparent,
        ),
        ElevatedButton(
          child: const Text("Search"),
          onPressed: () => controller.getCep(context),
        )
      ],
    );
  }
}
