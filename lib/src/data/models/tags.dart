class TagsModel {
  int status;
  int tagsCount;
  List<Tag> tags;

  TagsModel({
    required this.status,
    required this.tagsCount,
    required this.tags,
  });

  factory TagsModel.fromJson(Map<String, dynamic> json) => TagsModel(
    status: json["status"],
    tagsCount: json["tags_count"],
    tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "tags_count": tagsCount,
    "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
  };
}

class Tag {
  int id;
  String title;
  String slug;
  DateTime createdAt;
  DateTime updatedAt;

  Tag({
    required this.id,
    required this.title,
    required this.slug,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
    id: json["id"],
    title: json["title"],
    slug: json["slug"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "slug": slug,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}