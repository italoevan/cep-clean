import 'package:cep_poc/core/app.dart';
import 'package:cep_poc/core/injection.dart';
import 'package:flutter/cupertino.dart';

void main() {
  Injection.init();
  runApp(const App());
}
