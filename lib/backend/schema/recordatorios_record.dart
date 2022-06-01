import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recordatorios_record.g.dart';

abstract class RecordatoriosRecord
    implements Built<RecordatoriosRecord, RecordatoriosRecordBuilder> {
  static Serializer<RecordatoriosRecord> get serializer =>
      _$recordatoriosRecordSerializer;

  @nullable
  String get nombre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RecordatoriosRecordBuilder builder) =>
      builder..nombre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recordatorios');

  static Stream<RecordatoriosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RecordatoriosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  RecordatoriosRecord._();
  factory RecordatoriosRecord(
          [void Function(RecordatoriosRecordBuilder) updates]) =
      _$RecordatoriosRecord;

  static RecordatoriosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRecordatoriosRecordData({
  String nombre,
}) =>
    serializers.toFirestore(RecordatoriosRecord.serializer,
        RecordatoriosRecord((r) => r..nombre = nombre));
