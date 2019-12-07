import 'dart:convert';

class Episode {
    int episodeId;
    String episode;
    String title;
    String titleJapanese;
    String titleRomanji;
    DateTime aired;
    String imageUrl;
    bool filler;
    bool recap;
    String url;
    String videoUrl;
    String forumUrl;

    Episode({
        this.episodeId,
        this.title,
        this.titleJapanese,
        this.titleRomanji,
        this.aired,
        this.filler,
        this.recap,
        this.videoUrl,
        this.forumUrl,
        this.episode,
        this.url,
        this.imageUrl,
    });

    factory Episode.fromRawJson(String str) => Episode.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        episodeId: json["episode_id"] == null ? null : json["episode_id"],
        title: json["title"] == null ? null : json["title"],
        titleJapanese: json["title_japanese"] == null ? null : json["title_japanese"],
        titleRomanji: json["title_romanji"] == null ? null : json["title_romanji"],
        aired: json["aired"] == null ? null : DateTime.parse(json["aired"]),
        filler: json["filler"] == null ? null : json["filler"],
        recap: json["recap"] == null ? null : json["recap"],
        videoUrl: json["video_url"] == null ? null : json["video_url"],
        forumUrl: json["forum_url"] == null ? null : json["forum_url"],
        episode: json["episode"] == null ? null : json["episode"],
        url: json["url"] == null ? null : json["url"],
        imageUrl: json["image_url"] == null ? null : json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "episode_id": episodeId == null ? null : episodeId,
        "title": title == null ? null : title,
        "title_japanese": titleJapanese == null ? null : titleJapanese,
        "title_romanji": titleRomanji == null ? null : titleRomanji,
        "aired": aired == null ? null : aired.toIso8601String(),
        "filler": filler == null ? null : filler,
        "recap": recap == null ? null : recap,
        "video_url": videoUrl == null ? null : videoUrl,
        "forum_url": forumUrl == null ? null : forumUrl,
        "title": title == null ? null : title,
        "episode": episode == null ? null : episode,
        "url": url == null ? null : url,
        "image_url": imageUrl == null ? null : imageUrl,
    };
}