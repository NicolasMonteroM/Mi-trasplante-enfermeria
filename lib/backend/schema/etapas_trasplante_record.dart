import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'etapas_trasplante_record.g.dart';

abstract class EtapasTrasplanteRecord
    implements Built<EtapasTrasplanteRecord, EtapasTrasplanteRecordBuilder> {
  static Serializer<EtapasTrasplanteRecord> get serializer =>
      _$etapasTrasplanteRecordSerializer;

  @nullable
  BuiltList<String> get listado;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EtapasTrasplanteRecordBuilder builder) =>
      builder..listado = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('etapas_trasplante');

  static Stream<EtapasTrasplanteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<EtapasTrasplanteRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  EtapasTrasplanteRecord._();
  factory EtapasTrasplanteRecord(
          [void Function(EtapasTrasplanteRecordBuilder) updates]) =
      _$EtapasTrasplanteRecord;

  static EtapasTrasplanteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEtapasTrasplanteRecordData() =>
    serializers.toFirestore(EtapasTrasplanteRecord.serializer,
        EtapasTrasplanteRecord((e) => e..listado = null));
