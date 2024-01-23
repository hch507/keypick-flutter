
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../dto/blogtotal_dto.dart';
part 'naver_retrofit_client.g.dart';
//https://openapi.naver.com/v1/
//id tZR4mxv0e3Le0j2F3mQP
//pw ZJoce5jaT6
//sort date
//sort2 sim
//search/blog.json
@RestApi(baseUrl: "https://openapi.naver.com/v1/")
abstract class NaverRestClient{
  factory NaverRestClient(Dio dio, {String baseUrl}) = _NaverRestClient;
  @GET("search/blog.json")
  Future<BlogTotal> getBlogTotal(
        @Header("X-Naver-Client-Id") String clientId,
        @Header("X-Naver-Client-Secret") String clientKey,
        @Query("diplay") int display,
        @Query("query") String searchTerm,
        @Query("sort") String sort,
      );
}