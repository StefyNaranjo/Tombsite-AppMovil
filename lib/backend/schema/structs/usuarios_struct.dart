// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosStruct extends FFFirebaseStruct {
  UsuariosStruct({
    String? cedula,
    String? nombre,
    String? apellido,
    String? email,
    String? contrasena,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cedula = cedula,
        _nombre = nombre,
        _apellido = apellido,
        _email = email,
        _contrasena = contrasena,
        super(firestoreUtilData);

  // "cedula" field.
  String? _cedula;
  String get cedula => _cedula ?? '';
  set cedula(String? val) => _cedula = val;

  bool hasCedula() => _cedula != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  set apellido(String? val) => _apellido = val;

  bool hasApellido() => _apellido != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "contrasena" field.
  String? _contrasena;
  String get contrasena => _contrasena ?? '';
  set contrasena(String? val) => _contrasena = val;

  bool hasContrasena() => _contrasena != null;

  static UsuariosStruct fromMap(Map<String, dynamic> data) => UsuariosStruct(
        cedula: data['cedula'] as String?,
        nombre: data['nombre'] as String?,
        apellido: data['apellido'] as String?,
        email: data['email'] as String?,
        contrasena: data['contrasena'] as String?,
      );

  static UsuariosStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsuariosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cedula': _cedula,
        'nombre': _nombre,
        'apellido': _apellido,
        'email': _email,
        'contrasena': _contrasena,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cedula': serializeParam(
          _cedula,
          ParamType.String,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'apellido': serializeParam(
          _apellido,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'contrasena': serializeParam(
          _contrasena,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsuariosStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuariosStruct(
        cedula: deserializeParam(
          data['cedula'],
          ParamType.String,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        apellido: deserializeParam(
          data['apellido'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        contrasena: deserializeParam(
          data['contrasena'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsuariosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuariosStruct &&
        cedula == other.cedula &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        email == other.email &&
        contrasena == other.contrasena;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([cedula, nombre, apellido, email, contrasena]);
}

UsuariosStruct createUsuariosStruct({
  String? cedula,
  String? nombre,
  String? apellido,
  String? email,
  String? contrasena,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsuariosStruct(
      cedula: cedula,
      nombre: nombre,
      apellido: apellido,
      email: email,
      contrasena: contrasena,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UsuariosStruct? updateUsuariosStruct(
  UsuariosStruct? usuarios, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    usuarios
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUsuariosStructData(
  Map<String, dynamic> firestoreData,
  UsuariosStruct? usuarios,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (usuarios == null) {
    return;
  }
  if (usuarios.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && usuarios.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usuariosData = getUsuariosFirestoreData(usuarios, forFieldValue);
  final nestedData = usuariosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = usuarios.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUsuariosFirestoreData(
  UsuariosStruct? usuarios, [
  bool forFieldValue = false,
]) {
  if (usuarios == null) {
    return {};
  }
  final firestoreData = mapToFirestore(usuarios.toMap());

  // Add any Firestore field values
  usuarios.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsuariosListFirestoreData(
  List<UsuariosStruct>? usuarioss,
) =>
    usuarioss?.map((e) => getUsuariosFirestoreData(e, true)).toList() ?? [];
