
import 'package:flutter_keypick/data/dto/blogtotal_dto.dart';

abstract class KeywordRepository{
  Future<BlogTotal> getPostingRank(String searchTerm);
  Future<void> getMonthRatio(String searchTerm);
  Future<void> getRelKeyword(String searchTerm);
}