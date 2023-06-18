// To parse this JSON data, do
//
//     final listArtikel = listArtikelFromJson(jsonString);

import 'dart:convert';

ListArtikel listArtikelFromJson(String str) => ListArtikel.fromJson(json.decode(str));

String listArtikelToJson(ListArtikel data) => json.encode(data.toJson());

class ListArtikel {
    int id;
    DateTime date;
    Content guid;
    Content title;
    Content content;
    Content excerpt;
    List<int> categories;
    String jetpackFeaturedMediaUrl;
    String jetpackShortlink;

    ListArtikel({
        required this.id,
        required this.date,
        required this.guid,
        required this.title,
        required this.content,
        required this.excerpt,
        required this.categories,
        required this.jetpackFeaturedMediaUrl,
        required this.jetpackShortlink,
    });

    factory ListArtikel.fromJson(Map<String, dynamic> json) => ListArtikel(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        guid: Content.fromJson(json["guid"]),
        title: Content.fromJson(json["title"]),
        content: Content.fromJson(json["content"]),
        excerpt: Content.fromJson(json["excerpt"]),
        categories: List<int>.from(json["categories"].map((x) => x)),
        jetpackFeaturedMediaUrl: json["jetpack_featured_media_url"],
        jetpackShortlink: json["jetpack_shortlink"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "date": date.toIso8601String(),
        "guid": guid.toJson(),
        "title": title.toJson(),
        "content": content.toJson(),
        "excerpt": excerpt.toJson(),
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "jetpack_featured_media_url": jetpackFeaturedMediaUrl,
        "jetpack_shortlink": jetpackShortlink,
    };
}

class Content {
    String rendered;

    Content({
        required this.rendered,
    });

    factory Content.fromJson(Map<String, dynamic> json) => Content(
        rendered: json["rendered"],
    );

    Map<String, dynamic> toJson() => {
        "rendered": rendered,
    };
}
