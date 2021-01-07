abstract class AbstractApiService<T> {

  static String baseUrl = "http://10.0.2.2:8080";

  Future<List<T>> fetch(String accessToken);

  Future<T> create(T object);

  Future<T> update();

  Future<T> delete();


}