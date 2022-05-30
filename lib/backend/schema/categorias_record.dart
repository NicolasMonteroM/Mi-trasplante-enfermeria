import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categorias_record.g.dart';

abstract class CategoriasRecord
    implements Built<CategoriasRecord, CategoriasRecordBuilder> {
  static Serializer<CategoriasRecord> get serializer =>
      _$categoriasRecordSerializer;

  @nullable
  BuiltList<String> get listado;

  @nullable
  BuiltList<String> get etapasTrasplante;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CategoriasRecordBuilder builder) => builder
    ..listado = ListBuilder()
    ..etapasTrasplante = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categorias');

  static Stream<CategoriasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CategoriasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CategoriasRecord._();
  factory CategoriasRecord([void Function(CategoriasRecordBuilder) updates]) =
      _$CategoriasRecord;

  static CategoriasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCategoriasRecordData() => serializers.toFirestore(
    CategoriasRecord.serializer,
    CategoriasRecord((c) => c
      ..listado = null
      ..etapasTrasplante = null));
