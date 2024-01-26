class BlogMonthRatio {
  String endDate;
  List<Result> results;
  String startDate;
  String timeUnit;

  BlogMonthRatio(
      {required this.endDate,
        required this.results,
        required this.startDate,
        required this.timeUnit});

  factory BlogMonthRatio.fromJson(Map<String, dynamic> json) => BlogMonthRatio(
    endDate: json["endDate"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    startDate: json["startDate"],
    timeUnit: json["timeUnit"],
  );
}

class Result {
  List<Data> data;
  List<String> keyword;
  String title;

  Result({required this.data, required this.keyword, required this.title});

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    data: List<Data>.from(json["data"].map((x) => Data.formJson(x))),
    keyword: List<String>.from(json["keywords"]),
    title: json["title"],);
}

class Data {
  String period;
  double ratio;

  Data({required this.period, required this.ratio});
  factory Data.formJson(Map<String, dynamic> json) =>
      Data(period: json["period"], ratio: json["ratio"].toDouble());
}
