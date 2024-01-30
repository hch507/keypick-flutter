
import 'package:dio/dio.dart';
import 'package:flutter_keypick/data/dto/rel_keyword_dto.dart';
import 'package:retrofit/http.dart';

part 'rel_keyword_retrofit_client.g.dart';
@RestApi(baseUrl:"https://api.searchad.naver.com/")
abstract class RelKeywordRestClient{
  factory RelKeywordRestClient(Dio dio, {String baseUrl})= _RelKeywordRestClient;

  @GET("keywordstool")
  Future<RelKeyword> getBlogTotal(
        @Header("Content-Type") String content_type ,
        @Header("X-Timestamp") String x_timestamp,
        @Header("X-API-KEY") String api_key,
        @Header("X-Customer") String x_customer,
        @Header("X-Signature") String x_signature,
        @Query("hintKeywords") String hintKeywords,
        @Query("showDetail") int showDetail,
      );

}