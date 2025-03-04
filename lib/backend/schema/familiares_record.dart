import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FamiliaresRecord extends FirestoreRecord {
  FamiliaresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "coordenadas" field.
  LatLng? _coordenadas;
  LatLng? get coordenadas => _coordenadas;
  bool hasCoordenadas() => _coordenadas != null;

  // "fecha_nacimiento" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "fecha_fallecimiento" field.
  DateTime? _fechaFallecimiento;
  DateTime? get fechaFallecimiento => _fechaFallecimiento;
  bool hasFechaFallecimiento() => _fechaFallecimiento != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "ubi" field.
  LatLng? _ubi;
  LatLng? get ubi => _ubi;
  bool hasUbi() => _ubi != null;

  void _initializeFields() {
    _coordenadas = snapshotData['coordenadas'] as LatLng?;
    _fechaNacimiento = snapshotData['fecha_nacimiento'] as DateTime?;
    _fechaFallecimiento = snapshotData['fecha_fallecimiento'] as DateTime?;
    _nombre = snapshotData['nombre'] as String?;
    _ubi = snapshotData['ubi'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('familiares');

  static Stream<FamiliaresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FamiliaresRecord.fromSnapshot(s));

  static Future<FamiliaresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FamiliaresRecord.fromSnapshot(s));

  static FamiliaresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FamiliaresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FamiliaresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FamiliaresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FamiliaresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FamiliaresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFamiliaresRecordData({
  LatLng? coordenadas,
  DateTime? fechaNacimiento,
  DateTime? fechaFallecimiento,
  String? nombre,
  LatLng? ubi,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'coordenadas': coordenadas,
      'fecha_nacimiento': fechaNacimiento,
      'fecha_fallecimiento': fechaFallecimiento,
      'nombre': nombre,
      'ubi': ubi,
    }.withoutNulls,
  );

  return firestoreData;
}

class FamiliaresRecordDocumentEquality implements Equality<FamiliaresRecord> {
  const FamiliaresRecordDocumentEquality();

  @override
  bool equals(FamiliaresRecord? e1, FamiliaresRecord? e2) {
    return e1?.coordenadas == e2?.coordenadas &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.fechaFallecimiento == e2?.fechaFallecimiento &&
        e1?.nombre == e2?.nombre &&
        e1?.ubi == e2?.ubi;
  }

  @override
  int hash(FamiliaresRecord? e) => const ListEquality().hash([
        e?.coordenadas,
        e?.fechaNacimiento,
        e?.fechaFallecimiento,
        e?.nombre,
        e?.ubi
      ]);

  @override
  bool isValidKey(Object? o) => o is FamiliaresRecord;
}
