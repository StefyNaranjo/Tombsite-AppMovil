import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
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

  // State field(s) for confconstrasena widget.
  FocusNode? confconstrasenaFocusNode;
  TextEditingController? confconstrasenaTextController;
  late bool confconstrasenaVisibility;
  String? Function(BuildContext, String?)?
      confconstrasenaTextControllerValidator;
  String? _confconstrasenaTextControllerValidator(
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
    confconstrasenaVisibility = false;
    confconstrasenaTextControllerValidator =
        _confconstrasenaTextControllerValidator;
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

    confconstrasenaFocusNode?.dispose();
    confconstrasenaTextController?.dispose();
  }
}
