import 'dart:convert';

class Promo {
    String title;
    String imageUrl;
    String videoUrl;

    Promo({
        this.title,
        this.imageUrl,
        this.videoUrl,
    });

    factory Promo.fromRawJson(String str) => Promo.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Promo.fromJson(Map<String, dynamic> json) => Promo(
        title: json["title"] == null ? null : json["title"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
        videoUrl: json["video_url"] == null ? null : json["video_url"],
    );

    Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "image_url": imageUrl == null ? null : imageUrl,
        "video_url": videoUrl == null ? null : videoUrl,
    };
}