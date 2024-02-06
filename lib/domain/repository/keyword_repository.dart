
abstract class KeywordRepository{
  Future<void> getPostingRank(String searchTerm);
  Future<void> getMonthRatio(String searchTerm);
  Future<void> getRelKeyword(String searchTerm);
}