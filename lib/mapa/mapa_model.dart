import '/backend/backend.dart';
import '/components/barra_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'mapa_widget.dart' show MapaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MapaModel extends FlutterFlowModel<MapaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
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

  /// Action blocks.
  Future antes(BuildContext context) async {
    context.pushNamed(
      'principal',
      extra: <String, dynamic>{
        kTransitionInfoKey: TransitionInfo(
          hasTransition: true,
          transitionType: PageTransitionType.fade,
          duration: Duration(milliseconds: 0),
        ),
      },
    );
  }
}
