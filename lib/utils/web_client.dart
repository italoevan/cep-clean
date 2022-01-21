import 'package:http/http.dart' as http;

abstract class WebClient {
  Future get({required String url});
}

class WebClientImpl implements WebClient {
  @override
  Future<dynamic> get({required String url}) async {
    var result = await http.get(Uri.parse(url));

    return result;
  }
}
