import 'package:cep_poc/utils/web_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

void main() {
  late WebClient webClient;
  setUp(() => webClient = WebClientImpl());
  test("Should be return code 200", () async {
    var code =
        await webClient.get(url: "https://viacep.com.br/ws/01001000/json/");
    expect((code as Response).statusCode, 200);
  });
}
