import 'package:flutter_keypick/data/dto/blogtotal_dto.dart';
import 'package:flutter_keypick/data/repository_impl/Keyword_repository_impl.dart';
import 'package:flutter_keypick/domain/repository/keyword_repository.dart';

class RankUseCase{
  KeywordRepository keywordRepository = KeywordRepositoryImpl();
  Future<BlogTotal> invoke(String searchTerm) async{
    return await keywordRepository.getPostingRank(searchTerm);
  }
}