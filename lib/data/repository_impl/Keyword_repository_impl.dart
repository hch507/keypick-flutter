
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_keypick/data/source/remote/retrofit/naver_retrofit_client.dart';
import 'package:flutter_keypick/domain/repository/keyword_repository.dart';

class KeywordRepositoryImpl extends KeywordRepository{
  Dio dio =Dio();
  NaverRestClient naverRestClient;
  KeywordRepositoryImpl() : naverRestClient = NaverRestClient(Dio());
  @override
  Future<void> getPostingRank(String searchTerm) async {

    naverRestClient.getBlogTotal("tZR4mxv0e3Le0j2F3mQP", "ZJoce5jaT6", 100, searchTerm, "sim").then((value) => log("Rank : ${value.items[0].title}"));

  }

}