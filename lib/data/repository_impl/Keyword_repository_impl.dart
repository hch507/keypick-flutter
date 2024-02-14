import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_keypick/data/dto/blog_month_ratio_body.dart';
import 'package:flutter_keypick/data/dto/blogtotal_dto.dart';
import 'package:flutter_keypick/data/source/remote/retrofit/naver_retrofit_client.dart';
import 'package:flutter_keypick/domain/repository/keyword_repository.dart';

import '../source/remote/retrofit/rel_keyword_retrofit_client.dart';

class KeywordRepositoryImpl extends KeywordRepository {
  Dio dio = Dio();
  NaverRestClient naverRestClient;


  KeywordRepositoryImpl() : naverRestClient = NaverRestClient(Dio());


  @override
  Future<BlogTotal> getPostingRank(String searchTerm) async {
    // naverRestClient.getBlogTotal(
    //     "tZR4mxv0e3Le0j2F3mQP", "ZJoce5jaT6", 100, searchTerm, "sim").then((
    //     value) => log("Rank : ${value.items[0].title}"));
    return await naverRestClient.getBlogTotal(
        "tZR4mxv0e3Le0j2F3mQP", "ZJoce5jaT6", 100, searchTerm, "sim");
  }

  @override
  Future<void> getMonthRatio(String searchTerm) async {
    BlogMonthRatioBody body = BlogMonthRatioBody(
      startDate: "2020-01-01",
      endDate: "2024-01-01",
      timeUnit: "month",
      keywordGroups: [
        KeywordGroups(
          groupName: searchTerm,
          keywords: [searchTerm],
        ),
      ],);

    print("hch : ${body}");
    print("hch : ${body.toJson()}");
    naverRestClient.getKeywordData(
        "application/json", "oKQNT8007_pUD1FBJv0a", "Cp7YEq41hc", body).then((value) => log("MonthRatio : ${value.results[0].data.length}"));
  }

  @override
  Future<void> getRelKeyword(String searchTerm) {
    throw UnimplementedError();
  }

}