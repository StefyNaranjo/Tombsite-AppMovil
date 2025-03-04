import '/auth/firebase_auth/auth_util.dart';
import '/components/barra_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'ajustes_widget.dart' show AjustesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AjustesModel extends FlutterFlowModel<AjustesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for barra component.
  late BarraModel barraModel;

  @override
  void initState(BuildContext context) {
    barraModel = createModel(context, () => BarraModel());
  }

  @override
  void dispose() {
    barraModel.dispose();
  }
}
