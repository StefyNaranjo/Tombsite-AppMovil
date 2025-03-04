import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edituser_widget.dart' show EdituserWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EdituserModel extends FlutterFlowModel<EdituserWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cedula widget.
  FocusNode? cedulaFocusNode;
  TextEditingController? cedulaTextController;
  String? Function(BuildContext, String?)? cedulaTextControllerValidator;
  String? _cedulaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            'int lastDigit = int.parse(cedula.substring(9, 10));  int sumPares = 0;  int sumImpares = 0;  for (int i = 0; i < 9; i++) {    int digit = int.parse(cedula.substring(i, i + 1));    if (i % 2 == 0) {      sumPares += digit;    } else {      int multipliedDigit = digit * 2;      if (multipliedDigit > 9) {        multipliedDigit -= 9;      }      sumImpares += multipliedDigit;    }  }  int totalSum = sumPares + sumImpares;  int firstDigit = int.parse(totalSum.toString().substring(0, 1));  int validatorDigit = (firstDigit + 1) * 10 - totalSum;  if (validatorDigit == 10) {    validatorDigit = 0;  }  if (validatorDigit == lastDigit) {    print(\'La cédula es válida\');  } else {    print(\'La cédula es inválida\');  }')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for apellido widget.
  FocusNode? apellidoFocusNode;
  TextEditingController? apellidoTextController;
  String? Function(BuildContext, String?)? apellidoTextControllerValidator;
  String? _apellidoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaTextController;
  late bool contrasenaVisibility;
  String? Function(BuildContext, String?)? contrasenaTextControllerValidator;
  String? _contrasenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    cedulaTextControllerValidator = _cedulaTextControllerValidator;
    nombreTextControllerValidator = _nombreTextControllerValidator;
    apellidoTextControllerValidator = _apellidoTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    contrasenaVisibility = false;
    contrasenaTextControllerValidator = _contrasenaTextControllerValidator;
  }

  @override
  void dispose() {
    cedulaFocusNode?.dispose();
    cedulaTextController?.dispose();

    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    apellidoFocusNode?.dispose();
    apellidoTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaTextController?.dispose();
  }
}
