import '../../data/repository_impl/Keyword_repository_impl.dart';
import '../repository/keyword_repository.dart';

class MonthRatioUseCase{
  KeywordRepository keywordRepository = KeywordRepositoryImpl();

  void invoke(String searchTerm) async{
    await keywordRepository.getMonthRatio(searchTerm);
  }

}