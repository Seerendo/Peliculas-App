import 'dart:convert';

class CreditsResponse {
    int id;
    List<Cast> cast;
    List<Cast> crew;

    CreditsResponse({
        required this.id,
        required this.cast,
        required this.crew,
    });

    factory CreditsResponse.fromRawJson(String str) => CreditsResponse.fromJson(json.decode(str));

    factory CreditsResponse.fromJson(Map<String, dynamic> json) => CreditsResponse(
        id: json["id"],
        cast: List<Cast>.from(json["cast"].map((x) => Cast.fromJson(x))),
        crew: List<Cast>.from(json["crew"].map((x) => Cast.fromJson(x))),
    );
}

class Cast {
    bool adult;
    int gender;
    int id;
    String name;
    String originalName;
    double popularity;
    String? profilePath;
    int? castId;
    String? character;
    String creditId;
    int? order;
    String? job;

    get fullProfilePath {
        if(profilePath != null) {
            return "https://image.tmdb.org/t/p/w500$profilePath";
        }
        return "https://i.stack.imgur.com/GNhxO.png";
    }

    Cast({
        required this.adult,
        required this.gender,
        required this.id,
        required this.name,
        required this.originalName,
        required this.popularity,
        this.profilePath,
        this.castId,
        this.character,
        required this.creditId,
        this.order,
        this.job,
    });

    factory Cast.fromRawJson(String str) => Cast.fromJson(json.decode(str));

    factory Cast.fromJson(Map<String, dynamic> json) => Cast(
        adult: json["adult"],
        gender: json["gender"],
        id: json["id"],
        name: json["name"],
        originalName: json["original_name"],
        popularity: json["popularity"]?.toDouble(),
        profilePath: json["profile_path"],
        castId: json["cast_id"],
        character: json["character"],
        creditId: json["credit_id"],
        order: json["order"],
        job: json["job"],
    );
}