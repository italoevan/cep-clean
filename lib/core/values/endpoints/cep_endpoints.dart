abstract class CepEndpoints {
  static String getCep(String cep) => "https://viacep.com.br/ws/$cep/json/";
}
