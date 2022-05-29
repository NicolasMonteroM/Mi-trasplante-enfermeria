import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'medicamentos_record.g.dart';

abstract class MedicamentosRecord
    implements Built<MedicamentosRecord, MedicamentosRecordBuilder> {
  static Serializer<MedicamentosRecord> get serializer =>
      _$medicamentosRecordSerializer;

  @nullable
  String get nombre;

  @nullable
  String get concentracion;

  @nullable
  String get tipo;

  @nullable
  @BuiltValueField(wireName: 'funcion_principal')
  String get funcionPrincipal;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MedicamentosRecordBuilder builder) => builder
    ..nombre = ''
    ..concentracion = ''
    ..tipo = ''
    ..funcionPrincipal = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medicamentos');

  static Stream<MedicamentosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MedicamentosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  MedicamentosRecord._();
  factory MedicamentosRecord(
          [void Function(MedicamentosRecordBuilder) updates]) =
      _$MedicamentosRecord;

  static MedicamentosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMedicamentosRecordData({
  String nombre,
  String concentracion,
  String tipo,
  String funcionPrincipal,
}) =>
    serializers.toFirestore(
        MedicamentosRecord.serializer,
        MedicamentosRecord((m) => m
          ..nombre = nombre
          ..concentracion = concentracion
          ..tipo = tipo
          ..funcionPrincipal = funcionPrincipal));
