import 'package:flutter_keypick/data/repository_impl/Keyword_repository_impl.dart';
import 'package:flutter_keypick/domain/repository/keyword_repository.dart';

class RankUseCase{
  KeywordRepository keywordRepository = KeywordRepositoryImpl();
  void invoke(String searchTerm) async{
    await keywordRepository.getPostingRank(searchTerm);
  }
}