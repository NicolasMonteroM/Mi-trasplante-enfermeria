import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_enfermeria_record.g.dart';

abstract class UsersEnfermeriaRecord
    implements Built<UsersEnfermeriaRecord, UsersEnfermeriaRecordBuilder> {
  static Serializer<UsersEnfermeriaRecord> get serializer =>
      _$usersEnfermeriaRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersEnfermeriaRecordBuilder builder) =>
      builder
        ..email = ''
        ..displayName = ''
        ..uid = ''
        ..photoUrl = ''
        ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users_enfermeria');

  static Stream<UsersEnfermeriaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersEnfermeriaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersEnfermeriaRecord._();
  factory UsersEnfermeriaRecord(
          [void Function(UsersEnfermeriaRecordBuilder) updates]) =
      _$UsersEnfermeriaRecord;

  static UsersEnfermeriaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersEnfermeriaRecordData({
  String email,
  String displayName,
  String uid,
  DateTime createdTime,
  String photoUrl,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        UsersEnfermeriaRecord.serializer,
        UsersEnfermeriaRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..uid = uid
          ..createdTime = createdTime
          ..photoUrl = photoUrl
          ..phoneNumber = phoneNumber));
