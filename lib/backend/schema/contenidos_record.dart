import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'contenidos_record.g.dart';

abstract class ContenidosRecord
    implements Built<ContenidosRecord, ContenidosRecordBuilder> {
  static Serializer<ContenidosRecord> get serializer =>
      _$contenidosRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Nombre')
  String get nombre;

  @nullable
  String get categoriaPrincipal;

  @nullable
  String get preview;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ContenidosRecordBuilder builder) => builder
    ..nombre = ''
    ..categoriaPrincipal = ''
    ..preview = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Contenidos');

  static Stream<ContenidosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ContenidosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ContenidosRecord._();
  factory ContenidosRecord([void Function(ContenidosRecordBuilder) updates]) =
      _$ContenidosRecord;

  static ContenidosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createContenidosRecordData({
  String nombre,
  String categoriaPrincipal,
  String preview,
}) =>
    serializers.toFirestore(
        ContenidosRecord.serializer,
        ContenidosRecord((c) => c
          ..nombre = nombre
          ..categoriaPrincipal = categoriaPrincipal
          ..preview = preview));
