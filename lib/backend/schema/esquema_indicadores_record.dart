import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'esquema_indicadores_record.g.dart';

abstract class EsquemaIndicadoresRecord
    implements
        Built<EsquemaIndicadoresRecord, EsquemaIndicadoresRecordBuilder> {
  static Serializer<EsquemaIndicadoresRecord> get serializer =>
      _$esquemaIndicadoresRecordSerializer;

  @nullable
  String get tipo;

  @nullable
  @BuiltValueField(wireName: 'fecha_inicio')
  DateTime get fechaInicio;

  @nullable
  @BuiltValueField(wireName: 'fecha_finalizacion')
  DateTime get fechaFinalizacion;

  @nullable
  @BuiltValueField(wireName: 'veces_al_dia')
  String get vecesAlDia;

  @nullable
  @BuiltValueField(wireName: 'usuario_asignado')
  BuiltList<DocumentReference> get usuarioAsignado;

  @nullable
  @BuiltValueField(wireName: 'listado_recordatorios')
  BuiltList<DocumentReference> get listadoRecordatorios;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EsquemaIndicadoresRecordBuilder builder) =>
      builder
        ..tipo = ''
        ..vecesAlDia = ''
        ..usuarioAsignado = ListBuilder()
        ..listadoRecordatorios = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('esquema_indicadores');

  static Stream<EsquemaIndicadoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<EsquemaIndicadoresRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  EsquemaIndicadoresRecord._();
  factory EsquemaIndicadoresRecord(
          [void Function(EsquemaIndicadoresRecordBuilder) updates]) =
      _$EsquemaIndicadoresRecord;

  static EsquemaIndicadoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEsquemaIndicadoresRecordData({
  String tipo,
  DateTime fechaInicio,
  DateTime fechaFinalizacion,
  String vecesAlDia,
}) =>
    serializers.toFirestore(
        EsquemaIndicadoresRecord.serializer,
        EsquemaIndicadoresRecord((e) => e
          ..tipo = tipo
          ..fechaInicio = fechaInicio
          ..fechaFinalizacion = fechaFinalizacion
          ..vecesAlDia = vecesAlDia
          ..usuarioAsignado = null
          ..listadoRecordatorios = null));
