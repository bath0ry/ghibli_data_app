// To parse this JSON data, do
//
//     final ghibliModel = ghibliModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GhibliModel ghibliModelFromJson(String str) =>
    GhibliModel.fromJson(json.decode(str));

class GhibliModel {
  GhibliModel({
    required this.title,
    required this.poster,
    required this.genre,
    required this.rating,
    required this.release,
    required this.director,
    required this.screenwriters,
    required this.producers,
    required this.music,
    required this.hepburn,
    required this.runtimeMinutes,
    required this.budgetUsd,
    required this.boxOfficeUsd,
    required this.character,
    required this.awards,
    required this.synopsis,
    required this.reviews,
  });

  final String title;
  final String poster;
  final String genre;
  final String rating;
  final String release;
  final String director;
  final List<String> screenwriters;
  final String producers;
  final String music;
  final String hepburn;
  final String runtimeMinutes;
  final String budgetUsd;
  final String boxOfficeUsd;
  final List<ArriettyCharacter> character;
  final List<String> awards;
  final String synopsis;
  final Reviews reviews;

  factory GhibliModel.fromJson(Map<String, dynamic> json) => GhibliModel(
        title: json["title"],
        poster: json["poster"],
        genre: json["genre"],
        rating: json["rating"],
        release: json["release"],
        director: json["director"],
        screenwriters: List<String>.from(json["screenwriters"].map((x) => x)),
        producers: json["producers"],
        music: json["music"],
        hepburn: json["hepburn"],
        runtimeMinutes: json["runtimeMinutes"],
        budgetUsd: json["budgetUSD"],
        boxOfficeUsd: json["boxOfficeUSD"],
        character: List<ArriettyCharacter>.from(
            json["character"].map((x) => ArriettyCharacter.fromJson(x))),
        awards: List<String>.from(json["awards"].map((x) => x)),
        synopsis: json["synopsis"],
        reviews: Reviews.fromJson(json["reviews"]),
      );
}

class Arrietty {
  Arrietty({
    required this.castleInTheSky,
    required this.graveOfTheFireflies,
    required this.myNeighborTotoro,
    required this.kikiSDeliveryService,
    required this.onlyYesterday,
    required this.porcoRosso,
    required this.oceanWaves,
    required this.pomPoko,
    required this.whisperOfTheHeart,
    required this.princessMononoke,
    required this.myNeighborsTheYamadas,
    required this.spiritedAway,
    required this.theCatReturns,
    required this.howlSMovingCastle,
    required this.talesFromEarthsea,
    required this.ponyo,
    required this.arrietty,
    required this.fromUpOnPoppyHill,
    required this.theWindRises,
    required this.theTaleOfPrincessKaguya,
    required this.whenMarnieWasThere,
    required this.earwigAndTheWitch,
    required this.howDoYouLive,
  });
  final Arrietty castleInTheSky;
  final Arrietty graveOfTheFireflies;
  final Arrietty myNeighborTotoro;
  final KikiSDeliveryService kikiSDeliveryService;
  final Arrietty onlyYesterday;
  final KikiSDeliveryService porcoRosso;
  final Arrietty oceanWaves;
  final PomPoko pomPoko;
  final KikiSDeliveryService whisperOfTheHeart;
  final Arrietty princessMononoke;
  final Arrietty myNeighborsTheYamadas;
  final Arrietty spiritedAway;
  final Arrietty theCatReturns;
  final Arrietty howlSMovingCastle;
  final Arrietty talesFromEarthsea;
  final Arrietty ponyo;
  final Arrietty arrietty;
  final Arrietty fromUpOnPoppyHill;
  final Arrietty theWindRises;
  final Arrietty theTaleOfPrincessKaguya;
  final Arrietty whenMarnieWasThere;
  final Arrietty earwigAndTheWitch;
  final Arrietty howDoYouLive;

  factory Arrietty.fromJson(Map<String, dynamic> json) => Arrietty(
        castleInTheSky: Arrietty.fromJson(json["castle in the sky"]),
        graveOfTheFireflies: Arrietty.fromJson(json["grave of the fireflies"]),
        myNeighborTotoro: Arrietty.fromJson(json["my neighbor totoro"]),
        kikiSDeliveryService:
            KikiSDeliveryService.fromJson(json["kiki's delivery service"]),
        onlyYesterday: Arrietty.fromJson(json["only yesterday"]),
        porcoRosso: KikiSDeliveryService.fromJson(json["porco rosso"]),
        oceanWaves: Arrietty.fromJson(json["ocean waves"]),
        pomPoko: PomPoko.fromJson(json["pom poko"]),
        whisperOfTheHeart:
            KikiSDeliveryService.fromJson(json["whisper of the heart"]),
        princessMononoke: Arrietty.fromJson(json["princess mononoke"]),
        myNeighborsTheYamadas:
            Arrietty.fromJson(json["my neighbors the yamadas"]),
        spiritedAway: Arrietty.fromJson(json["spirited away"]),
        theCatReturns: Arrietty.fromJson(json["the cat returns"]),
        howlSMovingCastle: Arrietty.fromJson(json["howl's moving castle"]),
        talesFromEarthsea: Arrietty.fromJson(json["tales from earthsea"]),
        ponyo: Arrietty.fromJson(json["ponyo"]),
        arrietty: Arrietty.fromJson(json["arrietty"]),
        fromUpOnPoppyHill: Arrietty.fromJson(json["from up on poppy hill"]),
        theWindRises: Arrietty.fromJson(json["the wind rises"]),
        theTaleOfPrincessKaguya:
            Arrietty.fromJson(json["the tale of princess kaguya"]),
        whenMarnieWasThere: Arrietty.fromJson(json["when marnie was there"]),
        earwigAndTheWitch: Arrietty.fromJson(json["earwig and the witch"]),
        howDoYouLive: Arrietty.fromJson(json["how do you live?"]),
      );
}

class ArriettyCharacter {
  ArriettyCharacter({
    required this.name,
    required this.originalCast,
    required this.lastEnglishDubbingActor,
    required this.still,
  });

  final String name;
  final String originalCast;
  final String lastEnglishDubbingActor;
  final String still;

  factory ArriettyCharacter.fromJson(Map<String, dynamic> json) =>
      ArriettyCharacter(
        name: json["name"],
        originalCast: json["originalCast"],
        lastEnglishDubbingActor: json["lastEnglishDubbingActor"],
        still: json["still"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "originalCast": originalCast,
        "lastEnglishDubbingActor": lastEnglishDubbingActor,
        "still": still,
      };
}

class Reviews {
  Reviews({
    required this.rottenTomatoes,
    required this.imdb,
  });

  final String rottenTomatoes;
  final String imdb;

  factory Reviews.fromJson(Map<String, dynamic> json) => Reviews(
        rottenTomatoes: json["rottenTomatoes"],
        imdb: json["imdb"],
      );

  Map<String, dynamic> toJson() => {
        "rottenTomatoes": rottenTomatoes,
        "imdb": imdb,
      };
}

class KikiSDeliveryService {
  KikiSDeliveryService({
    required this.title,
    required this.poster,
    required this.genre,
    required this.rating,
    required this.release,
    required this.director,
    required this.screenwriters,
    required this.producers,
    required this.music,
    required this.hepburn,
    required this.runtimeMinutes,
    required this.budgetUsd,
    required this.boxOfficeUsd,
    required this.character,
    required this.awards,
    required this.synopsis,
    required this.reviews,
  });

  final String title;
  final String poster;
  final String genre;
  final String rating;
  final String release;
  final String director;
  final List<String> screenwriters;
  final List<String> producers;
  final String music;
  final String hepburn;
  final String runtimeMinutes;
  final String budgetUsd;
  final String boxOfficeUsd;
  final List<KikiSDeliveryServiceCharacter> character;
  final List<String> awards;
  final String synopsis;
  final Reviews reviews;

  factory KikiSDeliveryService.fromJson(Map<String, dynamic> json) =>
      KikiSDeliveryService(
        title: json["title"],
        poster: json["poster"],
        genre: json["genre"],
        rating: json["rating"],
        release: json["release"],
        director: json["director"],
        screenwriters: List<String>.from(json["screenwriters"].map((x) => x)),
        producers: List<String>.from(json["producers"].map((x) => x)),
        music: json["music"],
        hepburn: json["hepburn"],
        runtimeMinutes: json["runtimeMinutes"],
        budgetUsd: json["budgetUSD"],
        boxOfficeUsd: json["boxOfficeUSD"],
        character: List<KikiSDeliveryServiceCharacter>.from(json["character"]
            .map((x) => KikiSDeliveryServiceCharacter.fromJson(x))),
        awards: List<String>.from(json["awards"].map((x) => x)),
        synopsis: json["synopsis"],
        reviews: Reviews.fromJson(json["reviews"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "poster": poster,
        "genre": genre,
        "rating": rating,
        "release": release,
        "director": director,
        "screenwriters": List<dynamic>.from(screenwriters.map((x) => x)),
        "producers": List<dynamic>.from(producers.map((x) => x)),
        "music": music,
        "hepburn": hepburn,
        "runtimeMinutes": runtimeMinutes,
        "budgetUSD": budgetUsd,
        "boxOfficeUSD": boxOfficeUsd,
        "character": List<dynamic>.from(character.map((x) => x.toJson())),
        "awards": List<dynamic>.from(awards.map((x) => x)),
        "synopsis": synopsis,
        "reviews": reviews.toJson(),
      };
}

class KikiSDeliveryServiceCharacter {
  KikiSDeliveryServiceCharacter({
    required this.name,
    required this.originalCast,
    required this.lastEnglishDubbingActor,
    required this.still,
  });

  final String name;
  final dynamic originalCast;
  final dynamic lastEnglishDubbingActor;
  final String still;

  factory KikiSDeliveryServiceCharacter.fromJson(Map<String, dynamic> json) =>
      KikiSDeliveryServiceCharacter(
        name: json["name"],
        originalCast: json["originalCast"],
        lastEnglishDubbingActor: json["lastEnglishDubbingActor"],
        still: json["still"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "originalCast": originalCast,
        "lastEnglishDubbingActor": lastEnglishDubbingActor,
        "still": still,
      };
}

class PomPoko {
  PomPoko({
    required this.title,
    required this.poster,
    required this.genre,
    required this.rating,
    required this.release,
    required this.director,
    required this.screenwriters,
    required this.producers,
    required this.music,
    required this.hepburn,
    required this.runtimeMinutes,
    required this.budgetUsd,
    required this.boxOfficeUsd,
    required this.character,
    required this.awards,
    required this.synopsis,
    required this.reviews,
  });

  final String title;
  final String poster;
  final String genre;
  final String rating;
  final String release;
  final String director;
  final List<String> screenwriters;
  final List<String> producers;
  final String music;
  final String hepburn;
  final String runtimeMinutes;
  final String budgetUsd;
  final String boxOfficeUsd;
  final List<PomPokoCharacter> character;
  final List<String> awards;
  final String synopsis;
  final Reviews reviews;

  factory PomPoko.fromJson(Map<String, dynamic> json) => PomPoko(
        title: json["title"],
        poster: json["poster"],
        genre: json["genre"],
        rating: json["rating"],
        release: json["release"],
        director: json["director"],
        screenwriters: List<String>.from(json["screenwriters"].map((x) => x)),
        producers: List<String>.from(json["producers"].map((x) => x)),
        music: json["music"],
        hepburn: json["hepburn"],
        runtimeMinutes: json["runtimeMinutes"],
        budgetUsd: json["budgetUSD"],
        boxOfficeUsd: json["boxOfficeUSD"],
        character: List<PomPokoCharacter>.from(
            json["character"].map((x) => PomPokoCharacter.fromJson(x))),
        awards: List<String>.from(json["awards"].map((x) => x)),
        synopsis: json["synopsis"],
        reviews: Reviews.fromJson(json["reviews"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "poster": poster,
        "genre": genre,
        "rating": rating,
        "release": release,
        "director": director,
        "screenwriters": List<dynamic>.from(screenwriters.map((x) => x)),
        "producers": List<dynamic>.from(producers.map((x) => x)),
        "music": music,
        "hepburn": hepburn,
        "runtimeMinutes": runtimeMinutes,
        "budgetUSD": budgetUsd,
        "boxOfficeUSD": boxOfficeUsd,
        "character": List<dynamic>.from(character.map((x) => x.toJson())),
        "awards": List<dynamic>.from(awards.map((x) => x)),
        "synopsis": synopsis,
        "reviews": reviews.toJson(),
      };
}

class PomPokoCharacter {
  PomPokoCharacter({
    required this.name,
    required this.originalCast,
    required this.lastEnglishDubbingActor,
    required this.still,
  });

  final String name;
  final dynamic originalCast;
  final String lastEnglishDubbingActor;
  final String still;

  factory PomPokoCharacter.fromJson(Map<String, dynamic> json) =>
      PomPokoCharacter(
        name: json["name"],
        originalCast: json["originalCast"],
        lastEnglishDubbingActor: json["lastEnglishDubbingActor"],
        still: json["still"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "originalCast": originalCast,
        "lastEnglishDubbingActor": lastEnglishDubbingActor,
        "still": still,
      };
}
