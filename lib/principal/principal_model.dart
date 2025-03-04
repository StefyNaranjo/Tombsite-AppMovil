import '/backend/backend.dart';
import '/components/barra_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'principal_widget.dart' show PrincipalWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class PrincipalModel extends FlutterFlowModel<PrincipalWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<FamiliaresRecord> simpleSearchResults = [];
  // Model for barra component.
  late BarraModel barraModel;

  @override
  void initState(BuildContext context) {
    barraModel = createModel(context, () => BarraModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    barraModel.dispose();
  }
}
