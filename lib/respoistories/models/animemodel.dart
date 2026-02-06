
class Animemodel {
  List<Data>? data;
  Meta? meta;

  Animemodel({this.data, this.meta});

  Animemodel.fromJson(Map<String, dynamic> json) {
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
    if(json["meta"] is Map) {
      meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
    }
  }

  static List<Animemodel> fromList(List<Map<String, dynamic>> list) {
    return list.map(Animemodel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    if(meta != null) {
      _data["meta"] = meta?.toJson();
    }
    return _data;
  }

  Animemodel copyWith({
    List<Data>? data,
    Meta? meta,
  }) => Animemodel(
    data: data ?? this.data,
    meta: meta ?? this.meta,
  );
}

class Meta {
  int? page;
  int? size;
  int? totalData;
  int? totalPage;

  Meta({this.page, this.size, this.totalData, this.totalPage});

  Meta.fromJson(Map<String, dynamic> json) {
    if(json["page"] is num) {
      page = (json["page"] as num).toInt();
    }
    if(json["size"] is num) {
      size = (json["size"] as num).toInt();
    }
    if(json["totalData"] is num) {
      totalData = (json["totalData"] as num).toInt();
    }
    if(json["totalPage"] is num) {
      totalPage = (json["totalPage"] as num).toInt();
    }
  }

  static List<Meta> fromList(List<Map<String, dynamic>> list) {
    return list.map(Meta.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["page"] = page;
    _data["size"] = size;
    _data["totalData"] = totalData;
    _data["totalPage"] = totalPage;
    return _data;
  }

  Meta copyWith({
    int? page,
    int? size,
    int? totalData,
    int? totalPage,
  }) => Meta(
    page: page ?? this.page,
    size: size ?? this.size,
    totalData: totalData ?? this.totalData,
    totalPage: totalPage ?? this.totalPage,
  );
}

class Data {
  String? id;

  int? v;
  String? title;
  List<String>? alternativeTitles;
  List<String>? genres;
  String? image;
  String? thumb;
  String? link;
  int? ranking;
  String? synopsis;
  int? episodes;
  String? status;
  String? type;
  bool? hasRanking;
  bool? hasEpisode;
  dynamic updatedAt;
  String? workerId;

  Data({this.id, this.v, this.title, this.alternativeTitles, this.genres, this.image, this.thumb, this.link, this.ranking, this.synopsis, this.episodes, this.status, this.type, this.hasRanking, this.hasEpisode, this.updatedAt, this.workerId});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String) {
      id = json["_id"];
    }
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["__v"] is num) {
      v = (json["__v"] as num).toInt();
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["alternativeTitles"] is List) {
      alternativeTitles = json["alternativeTitles"] == null ? null : List<String>.from(json["alternativeTitles"]);
    }
    if(json["genres"] is List) {
      genres = json["genres"] == null ? null : List<String>.from(json["genres"]);
    }
    if(json["image"] is String) {
      image = json["image"];
    }
    if(json["thumb"] is String) {
      thumb = json["thumb"];
    }
    if(json["link"] is String) {
      link = json["link"];
    }
    if(json["ranking"] is num) {
      ranking = (json["ranking"] as num).toInt();
    }
    if(json["synopsis"] is String) {
      synopsis = json["synopsis"];
    }
    if(json["episodes"] is num) {
      episodes = (json["episodes"] as num).toInt();
    }
    if(json["status"] is String) {
      status = json["status"];
    }
    if(json["type"] is String) {
      type = json["type"];
    }
    if(json["hasRanking"] is bool) {
      hasRanking = json["hasRanking"];
    }
    if(json["hasEpisode"] is bool) {
      hasEpisode = json["hasEpisode"];
    }
    updatedAt = json["updatedAt"];
    if(json["workerId"] is String) {
      workerId = json["workerId"];
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map(Data.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["id"] = id;
    _data["__v"] = v;
    _data["title"] = title;
    if(alternativeTitles != null) {
      _data["alternativeTitles"] = alternativeTitles;
    }
    if(genres != null) {
      _data["genres"] = genres;
    }
    _data["image"] = image;
    _data["thumb"] = thumb;
    _data["link"] = link;
    _data["ranking"] = ranking;
    _data["synopsis"] = synopsis;
    _data["episodes"] = episodes;
    _data["status"] = status;
    _data["type"] = type;
    _data["hasRanking"] = hasRanking;
    _data["hasEpisode"] = hasEpisode;
    _data["updatedAt"] = updatedAt;
    _data["workerId"] = workerId;
    return _data;
  }

  Data copyWith({
    String? id,
    int? v,
    String? title,
    List<String>? alternativeTitles,
    List<String>? genres,
    String? image,
    String? thumb,
    String? link,
    int? ranking,
    String? synopsis,
    int? episodes,
    String? status,
    String? type,
    bool? hasRanking,
    bool? hasEpisode,
    dynamic updatedAt,
    String? workerId,
  }) => Data(
    id: id ?? this.id,
    v: v ?? this.v,
    title: title ?? this.title,
    alternativeTitles: alternativeTitles ?? this.alternativeTitles,
    genres: genres ?? this.genres,
    image: image ?? this.image,
    thumb: thumb ?? this.thumb,
    link: link ?? this.link,
    ranking: ranking ?? this.ranking,
    synopsis: synopsis ?? this.synopsis,
    episodes: episodes ?? this.episodes,
    status: status ?? this.status,
    type: type ?? this.type,
    hasRanking: hasRanking ?? this.hasRanking,
    hasEpisode: hasEpisode ?? this.hasEpisode,
    updatedAt: updatedAt ?? this.updatedAt,
    workerId: workerId ?? this.workerId,
  );
}