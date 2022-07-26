// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'data/model/popular_person_model.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 2707373470040145636),
      name: 'KnownFor',
      lastPropertyId: const IdUid(16, 5064077745246918705),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2430225241955857403),
            name: 'adult',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(2, 4741519056941795043),
            name: 'backdropPath',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 7416125096029591313),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(4, 762788399776192885),
            name: 'mediaType',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1198626881035485846),
            name: 'originalLanguage',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 1174244292297730447),
            name: 'originalTitle',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 8764972942414684454),
            name: 'overview',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 5404341823592108273),
            name: 'posterPath',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 7625345358368154538),
            name: 'releaseDate',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 6596167867360892802),
            name: 'title',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 6984971022004545310),
            name: 'video',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 5622999199521259822),
            name: 'voteCount',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 3861509117304137807),
            name: 'firstAirDate',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 1594242900965383676),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 7201940000659291203),
            name: 'originalName',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 5064077745246918705),
            name: 'idPopular',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 7314657523537463570),
      name: 'Results',
      lastPropertyId: const IdUid(7, 2686295535690183649),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3929256546450971067),
            name: 'adult',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(2, 1887871065091644004),
            name: 'gender',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 1120437252729782043),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(4, 5387808195441084185),
            name: 'knownForDepartment',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1273593497600533353),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 7189104338371203459),
            name: 'profilePath',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 2686295535690183649),
            name: 'idResults',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(2, 7314657523537463570),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    KnownFor: EntityDefinition<KnownFor>(
        model: _entities[0],
        toOneRelations: (KnownFor object) => [],
        toManyRelations: (KnownFor object) => {},
        getId: (KnownFor object) => object.id,
        setId: (KnownFor object, int id) {
          object.id = id;
        },
        objectToFB: (KnownFor object, fb.Builder fbb) {
          final backdropPathOffset = object.backdropPath == null
              ? null
              : fbb.writeString(object.backdropPath!);
          final mediaTypeOffset = object.mediaType == null
              ? null
              : fbb.writeString(object.mediaType!);
          final originalLanguageOffset = object.originalLanguage == null
              ? null
              : fbb.writeString(object.originalLanguage!);
          final originalTitleOffset = object.originalTitle == null
              ? null
              : fbb.writeString(object.originalTitle!);
          final overviewOffset = object.overview == null
              ? null
              : fbb.writeString(object.overview!);
          final posterPathOffset = object.posterPath == null
              ? null
              : fbb.writeString(object.posterPath!);
          final releaseDateOffset = object.releaseDate == null
              ? null
              : fbb.writeString(object.releaseDate!);
          final titleOffset =
              object.title == null ? null : fbb.writeString(object.title!);
          final firstAirDateOffset = object.firstAirDate == null
              ? null
              : fbb.writeString(object.firstAirDate!);
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          final originalNameOffset = object.originalName == null
              ? null
              : fbb.writeString(object.originalName!);
          fbb.startTable(17);
          fbb.addBool(0, object.adult);
          fbb.addOffset(1, backdropPathOffset);
          fbb.addInt64(2, object.id ?? 0);
          fbb.addOffset(3, mediaTypeOffset);
          fbb.addOffset(4, originalLanguageOffset);
          fbb.addOffset(5, originalTitleOffset);
          fbb.addOffset(6, overviewOffset);
          fbb.addOffset(7, posterPathOffset);
          fbb.addOffset(8, releaseDateOffset);
          fbb.addOffset(9, titleOffset);
          fbb.addBool(10, object.video);
          fbb.addInt64(11, object.voteCount);
          fbb.addOffset(12, firstAirDateOffset);
          fbb.addOffset(13, nameOffset);
          fbb.addOffset(14, originalNameOffset);
          fbb.addInt64(15, object.idPopular);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = KnownFor(
              adult: const fb.BoolReader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              backdropPath: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6),
              idPopular: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 34),
              mediaType: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10),
              originalLanguage: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12),
              originalTitle: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 14),
              overview: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 16),
              posterPath: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 18),
              releaseDate: const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 20),
              title: const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 22),
              video: const fb.BoolReader().vTableGetNullable(buffer, rootOffset, 24),
              voteCount: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 26),
              firstAirDate: const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 28),
              name: const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 30),
              originalName: const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 32),
              id: const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 8));

          return object;
        }),
    Results: EntityDefinition<Results>(
        model: _entities[1],
        toOneRelations: (Results object) => [],
        toManyRelations: (Results object) => {},
        getId: (Results object) => object.id,
        setId: (Results object, int id) {
          object.id = id;
        },
        objectToFB: (Results object, fb.Builder fbb) {
          final knownForDepartmentOffset = object.knownForDepartment == null
              ? null
              : fbb.writeString(object.knownForDepartment!);
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          final profilePathOffset = object.profilePath == null
              ? null
              : fbb.writeString(object.profilePath!);
          fbb.startTable(8);
          fbb.addBool(0, object.adult);
          fbb.addInt64(1, object.gender);
          fbb.addInt64(2, object.id ?? 0);
          fbb.addOffset(3, knownForDepartmentOffset);
          fbb.addOffset(4, nameOffset);
          fbb.addOffset(5, profilePathOffset);
          fbb.addInt64(6, object.idResults);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Results(
              adult: const fb.BoolReader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              gender: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              idResults: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              knownForDepartment: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10),
              name: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12),
              profilePath: const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 14),
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 8));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [KnownFor] entity fields to define ObjectBox queries.
class KnownFor_ {
  /// see [KnownFor.adult]
  static final adult =
      QueryBooleanProperty<KnownFor>(_entities[0].properties[0]);

  /// see [KnownFor.backdropPath]
  static final backdropPath =
      QueryStringProperty<KnownFor>(_entities[0].properties[1]);

  /// see [KnownFor.id]
  static final id = QueryIntegerProperty<KnownFor>(_entities[0].properties[2]);

  /// see [KnownFor.mediaType]
  static final mediaType =
      QueryStringProperty<KnownFor>(_entities[0].properties[3]);

  /// see [KnownFor.originalLanguage]
  static final originalLanguage =
      QueryStringProperty<KnownFor>(_entities[0].properties[4]);

  /// see [KnownFor.originalTitle]
  static final originalTitle =
      QueryStringProperty<KnownFor>(_entities[0].properties[5]);

  /// see [KnownFor.overview]
  static final overview =
      QueryStringProperty<KnownFor>(_entities[0].properties[6]);

  /// see [KnownFor.posterPath]
  static final posterPath =
      QueryStringProperty<KnownFor>(_entities[0].properties[7]);

  /// see [KnownFor.releaseDate]
  static final releaseDate =
      QueryStringProperty<KnownFor>(_entities[0].properties[8]);

  /// see [KnownFor.title]
  static final title =
      QueryStringProperty<KnownFor>(_entities[0].properties[9]);

  /// see [KnownFor.video]
  static final video =
      QueryBooleanProperty<KnownFor>(_entities[0].properties[10]);

  /// see [KnownFor.voteCount]
  static final voteCount =
      QueryIntegerProperty<KnownFor>(_entities[0].properties[11]);

  /// see [KnownFor.firstAirDate]
  static final firstAirDate =
      QueryStringProperty<KnownFor>(_entities[0].properties[12]);

  /// see [KnownFor.name]
  static final name =
      QueryStringProperty<KnownFor>(_entities[0].properties[13]);

  /// see [KnownFor.originalName]
  static final originalName =
      QueryStringProperty<KnownFor>(_entities[0].properties[14]);

  /// see [KnownFor.idPopular]
  static final idPopular =
      QueryIntegerProperty<KnownFor>(_entities[0].properties[15]);
}

/// [Results] entity fields to define ObjectBox queries.
class Results_ {
  /// see [Results.adult]
  static final adult =
      QueryBooleanProperty<Results>(_entities[1].properties[0]);

  /// see [Results.gender]
  static final gender =
      QueryIntegerProperty<Results>(_entities[1].properties[1]);

  /// see [Results.id]
  static final id = QueryIntegerProperty<Results>(_entities[1].properties[2]);

  /// see [Results.knownForDepartment]
  static final knownForDepartment =
      QueryStringProperty<Results>(_entities[1].properties[3]);

  /// see [Results.name]
  static final name = QueryStringProperty<Results>(_entities[1].properties[4]);

  /// see [Results.profilePath]
  static final profilePath =
      QueryStringProperty<Results>(_entities[1].properties[5]);

  /// see [Results.idResults]
  static final idResults =
      QueryIntegerProperty<Results>(_entities[1].properties[6]);
}
