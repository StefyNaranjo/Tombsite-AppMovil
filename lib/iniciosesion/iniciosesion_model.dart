import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'iniciosesion_widget.dart' show IniciosesionWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IniciosesionModel extends FlutterFlowModel<IniciosesionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  String? Function(BuildContext, String?)? correoTextControllerValidator;
  // State field(s) for contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaTextController;
  late bool contrasenaVisibility;
  String? Function(BuildContext, String?)? contrasenaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    contrasenaVisibility = false;
  }

  @override
  void dispose() {
    correoFocusNode?.dispose();
    correoTextController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaTextController?.dispose();
  }
}
