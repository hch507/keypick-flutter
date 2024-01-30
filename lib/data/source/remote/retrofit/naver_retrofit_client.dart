
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../dto/blog_month_ratio_body.dart';
import '../../../dto/blog_month_ratio_dto.dart';
import '../../../dto/blogtotal_dto.dart';
part 'naver_retrofit_client.g.dart';

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

  @POST("datalab/search")
  Future<BlogMonthRatio> getKeywordData(
      @Header("Content-Type") String ContentType,
      @Header("X-Naver-Client-Id") String clientId,
      @Header("X-Naver-Client-Secret") String clientSecret,
      @Body() BlogMonthRatioBody request,
      );
}