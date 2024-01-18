import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'user_retrofit_client.g.dart';

@RestApi(baseUrl:"https://blog.naver.com/")
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;
//https://blog.naver.com/NVisitorgp4Ajax.nhn?blogId=ddoaak"
//https://blog.naver.com/NVisitorgp4Ajax.nhn?blogId=ddoaak
  @GET("NVisitorgp4Ajax.nhn")
  Future<String> getUserData(
        @Query("blogId") String blogId
      );
}
