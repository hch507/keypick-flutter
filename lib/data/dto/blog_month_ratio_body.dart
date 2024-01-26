class BlogMonthRatioBody {
  String startDate;
  String endDate;
  String timeUnit;
  List<KeywordGroups> keywordGroups;

  BlogMonthRatioBody({
    required this.startDate,
    required this.endDate,
    required this.timeUnit,
    required this.keywordGroups
  });

  Map<String, dynamic> toJson() =>
      {
        'startDate': startDate,
        'endDate': endDate,
        'timeUnit': timeUnit,
        'keywordGroups': List<dynamic>.from(
            keywordGroups.map((group) => group.toJson())),
      };
}

class KeywordGroups {
  late String groupName;
  late List<String> keywords;

  KeywordGroups({
    required this.groupName,
    required this.keywords,
  });

  Map<String, dynamic> toJson() =>
      {
        'groupName': groupName,
        'keywords': List<dynamic>.from(keywords),
      };
}