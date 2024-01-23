class BlogTotal {
  String lastBuildDate;
  int total;
  int start;
  int display;
  List<Item> items;

  BlogTotal({
    required this.lastBuildDate,
    required this.total,
    required this.start,
    required this.display,
    required this.items,
  });

  factory BlogTotal.fromJson(Map<String, dynamic> json) => BlogTotal(
    lastBuildDate: json["lastBuildDate"],
    total: json["total"],
    start: json["start"],
    display: json["display"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "lastBuildDate": lastBuildDate,
    "total": total,
    "start": start,
    "display": display,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  String title;
  String link;
  String description;
  String bloggername;
  String bloggerlink;
  String postdate;

  Item({
    required this.title,
    required this.link,
    required this.description,
    required this.bloggername,
    required this.bloggerlink,
    required this.postdate,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    title: json["title"],
    link: json["link"],
    description: json["description"],
    bloggername: json["bloggername"],
    bloggerlink: json["bloggerlink"],
    postdate: json["postdate"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "link": link,
    "description": description,
    "bloggername": bloggername,
    "bloggerlink": bloggerlink,
    "postdate": postdate,
  };
}
