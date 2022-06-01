import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'birth_date')
  DateTime get birthDate;

  @nullable
  @BuiltValueField(wireName: 'id_number')
  String get idNumber;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: 'last_name')
  String get lastName;

  @nullable
  @BuiltValueField(wireName: 'document_type')
  String get documentType;

  @nullable
  String get height;

  @nullable
  String get weight;

  @nullable
  String get gender;

  @nullable
  String get stage;

  @nullable
  int get age;

  @nullable
  @BuiltValueField(wireName: 'categorias_recomendadas')
  BuiltList<String> get categoriasRecomendadas;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..idNumber = ''
    ..name = ''
    ..lastName = ''
    ..documentType = ''
    ..height = ''
    ..weight = ''
    ..gender = ''
    ..stage = ''
    ..age = 0
    ..categoriasRecomendadas = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => UsersRecord(
        (c) => c
          ..email = snapshot.data['email']
          ..displayName = snapshot.data['display_name']
          ..photoUrl = snapshot.data['photo_url']
          ..uid = snapshot.data['uid']
          ..createdTime = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['created_time']))
          ..phoneNumber = snapshot.data['phone_number']
          ..birthDate = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(snapshot.data['birth_date']))
          ..idNumber = snapshot.data['id_number']
          ..name = snapshot.data['name']
          ..lastName = snapshot.data['last_name']
          ..documentType = snapshot.data['document_type']
          ..height = snapshot.data['height']
          ..weight = snapshot.data['weight']
          ..gender = snapshot.data['gender']
          ..stage = snapshot.data['stage']
          ..age = snapshot.data['age']?.round()
          ..categoriasRecomendadas = safeGet(
              () => ListBuilder(snapshot.data['categorias_recomendadas']))
          ..reference = UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  DateTime birthDate,
  String idNumber,
  String name,
  String lastName,
  String documentType,
  String height,
  String weight,
  String gender,
  String stage,
  int age,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..birthDate = birthDate
          ..idNumber = idNumber
          ..name = name
          ..lastName = lastName
          ..documentType = documentType
          ..height = height
          ..weight = weight
          ..gender = gender
          ..stage = stage
          ..age = age
          ..categoriasRecomendadas = null));
