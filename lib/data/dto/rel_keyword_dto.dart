class RelKeyword {
  List<Keyword> keywordList;

  RelKeyword({required this.keywordList});

  factory RelKeyword.fromJson(Map<String, dynamic> json) => RelKeyword(
      keywordList:
          List<Keyword>.from(json["keywordList"].map((x) => Keyword.fromJson(x))));
}

class Keyword {
  String compIdx;
  String monthlyAveMobileClkCnt;
  String monthlyAveMobileCtr;
  String monthlyAvePcClkCnt;
  String monthlyAvePcCtr;
  String monthlyMobileQcCnt;
  String monthlyPcQcCnt;
  String plAvgDepth;
  String relKeywor;

  Keyword({
    required this.compIdx,
    required this.monthlyAveMobileClkCnt,
    required this.monthlyAveMobileCtr,
    required this.monthlyAvePcClkCnt,
    required this.monthlyAvePcCtr,
    required this.monthlyMobileQcCnt,
    required this.monthlyPcQcCnt,
    required this.plAvgDepth,
    required this.relKeywor,
  });

  factory Keyword.fromJson(Map<String, dynamic> json) => Keyword(
        compIdx: json["compIdx"].toString(),
        monthlyAveMobileClkCnt: json["monthlyAveMobileClkCnt"].toString(),
        monthlyAveMobileCtr: json["monthlyAveMobileCtr"].toString(),
        monthlyAvePcClkCnt: json["monthlyAvePcClkCnt"].toString(),
        monthlyAvePcCtr: json["monthlyAvePcCtr"].toString(),
        monthlyMobileQcCnt: json["monthlyMobileQcCnt"].toString(),
        monthlyPcQcCnt: json["monthlyPcQcCnt"].toString(),
        plAvgDepth: json["plAvgDepth"].toString(),
        relKeywor: json["relKeywor"].toString(),
      );
}
