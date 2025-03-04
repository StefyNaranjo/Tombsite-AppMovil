// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FamiliaresStruct extends FFFirebaseStruct {
  FamiliaresStruct({
    String? nombre,
    DateTime? fechaNacimiento,
    DateTime? fechaFallecimiento,
    LatLng? ubicacion,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombre = nombre,
        _fechaNacimiento = fechaNacimiento,
        _fechaFallecimiento = fechaFallecimiento,
        _ubicacion = ubicacion,
        super(firestoreUtilData);

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "fecha_nacimiento" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  set fechaNacimiento(DateTime? val) => _fechaNacimiento = val;

  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "fecha_fallecimiento" field.
  DateTime? _fechaFallecimiento;
  DateTime? get fechaFallecimiento => _fechaFallecimiento;
  set fechaFallecimiento(DateTime? val) => _fechaFallecimiento = val;

  bool hasFechaFallecimiento() => _fechaFallecimiento != null;

  // "ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  set ubicacion(LatLng? val) => _ubicacion = val;

  bool hasUbicacion() => _ubicacion != null;

  static FamiliaresStruct fromMap(Map<String, dynamic> data) =>
      FamiliaresStruct(
        nombre: data['nombre'] as String?,
        fechaNacimiento: data['fecha_nacimiento'] as DateTime?,
        fechaFallecimiento: data['fecha_fallecimiento'] as DateTime?,
        ubicacion: data['ubicacion'] as LatLng?,
      );

  static FamiliaresStruct? maybeFromMap(dynamic data) => data is Map
      ? FamiliaresStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'fecha_nacimiento': _fechaNacimiento,
        'fecha_fallecimiento': _fechaFallecimiento,
        'ubicacion': _ubicacion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'fecha_nacimiento': serializeParam(
          _fechaNacimiento,
          ParamType.DateTime,
        ),
        'fecha_fallecimiento': serializeParam(
          _fechaFallecimiento,
          ParamType.DateTime,
        ),
        'ubicacion': serializeParam(
          _ubicacion,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static FamiliaresStruct fromSerializableMap(Map<String, dynamic> data) =>
      FamiliaresStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        fechaNacimiento: deserializeParam(
          data['fecha_nacimiento'],
          ParamType.DateTime,
          false,
        ),
        fechaFallecimiento: deserializeParam(
          data['fecha_fallecimiento'],
          ParamType.DateTime,
          false,
        ),
        ubicacion: deserializeParam(
          data['ubicacion'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'FamiliaresStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FamiliaresStruct &&
        nombre == other.nombre &&
        fechaNacimiento == other.fechaNacimiento &&
        fechaFallecimiento == other.fechaFallecimiento &&
        ubicacion == other.ubicacion;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nombre, fechaNacimiento, fechaFallecimiento, ubicacion]);
}

FamiliaresStruct createFamiliaresStruct({
  String? nombre,
  DateTime? fechaNacimiento,
  DateTime? fechaFallecimiento,
  LatLng? ubicacion,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FamiliaresStruct(
      nombre: nombre,
      fechaNacimiento: fechaNacimiento,
      fechaFallecimiento: fechaFallecimiento,
      ubicacion: ubicacion,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FamiliaresStruct? updateFamiliaresStruct(
  FamiliaresStruct? familiares, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    familiares
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFamiliaresStructData(
  Map<String, dynamic> firestoreData,
  FamiliaresStruct? familiares,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (familiares == null) {
    return;
  }
  if (familiares.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && familiares.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final familiaresData = getFamiliaresFirestoreData(familiares, forFieldValue);
  final nestedData = familiaresData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = familiares.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFamiliaresFirestoreData(
  FamiliaresStruct? familiares, [
  bool forFieldValue = false,
]) {
  if (familiares == null) {
    return {};
  }
  final firestoreData = mapToFirestore(familiares.toMap());

  // Add any Firestore field values
  familiares.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFamiliaresListFirestoreData(
  List<FamiliaresStruct>? familiaress,
) =>
    familiaress?.map((e) => getFamiliaresFirestoreData(e, true)).toList() ?? [];
