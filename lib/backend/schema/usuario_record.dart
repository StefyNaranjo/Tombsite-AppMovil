import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioRecord extends FirestoreRecord {
  UsuarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "cedula" field.
  String? _cedula;
  String get cedula => _cedula ?? '';
  bool hasCedula() => _cedula != null;

  // "contrasena" field.
  String? _contrasena;
  String get contrasena => _contrasena ?? '';
  bool hasContrasena() => _contrasena != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _apellido = snapshotData['apellido'] as String?;
    _cedula = snapshotData['cedula'] as String?;
    _contrasena = snapshotData['contrasena'] as String?;
    _email = snapshotData['email'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuarioRecord.fromSnapshot(s));

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuarioRecord.fromSnapshot(s));

  static UsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuarioRecordData({
  String? apellido,
  String? cedula,
  String? contrasena,
  String? email,
  String? nombre,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? displayName,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'apellido': apellido,
      'cedula': cedula,
      'contrasena': contrasena,
      'email': email,
      'nombre': nombre,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'display_name': displayName,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuarioRecordDocumentEquality implements Equality<UsuarioRecord> {
  const UsuarioRecordDocumentEquality();

  @override
  bool equals(UsuarioRecord? e1, UsuarioRecord? e2) {
    return e1?.apellido == e2?.apellido &&
        e1?.cedula == e2?.cedula &&
        e1?.contrasena == e2?.contrasena &&
        e1?.email == e2?.email &&
        e1?.nombre == e2?.nombre &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UsuarioRecord? e) => const ListEquality().hash([
        e?.apellido,
        e?.cedula,
        e?.contrasena,
        e?.email,
        e?.nombre,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.displayName,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuarioRecord;
}
