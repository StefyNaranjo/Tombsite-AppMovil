import '/backend/backend.dart';
import '/components/barra_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'mapa_model.dart';
export 'mapa_model.dart';

class MapaWidget extends StatefulWidget {
  const MapaWidget({
    super.key,
    required this.nombre,
  });

  final DocumentReference? nombre;

  @override
  State<MapaWidget> createState() => _MapaWidgetState();
}

class _MapaWidgetState extends State<MapaWidget> {
  late MapaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FamiliaresRecord>(
      stream: FamiliaresRecord.getDocument(widget!.nombre!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 40,
                height: 40,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final mapaFamiliaresRecord = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              resizeToAvoidBottomInset: false,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              appBar: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: true,
                title: Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Text(
                    'Ubicación de la tumba',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily:
                      FlutterFlowTheme.of(context).headlineLargeFamily,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 24,
                      letterSpacing: 0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineLargeFamily),
                    ),
                  ),
                ),
        leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
        Navigator.of(context).pop();
        },

              ),
              ),
              body: SafeArea(
                top: true,
                child: Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, -1),
                          child: Container(
                            width: 360,
                            constraints: BoxConstraints(
                              maxWidth: 600,
                            ),
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0, -1),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, -1),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment:
                                              AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 15, 15, 15),
                                                child: Container(
                                                  width: 326,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                                    border: Border.all(
                                                      color:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 6, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                          AlignmentDirectional(
                                                              0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                AlignmentDirectional(
                                                                    0, 0),
                                                                child: Text(
                                                                  mapaFamiliaresRecord
                                                                      .nombre,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  maxLines: 2,
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .headlineLarge
                                                                      .override(
                                                                    fontFamily:
                                                                    FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                    fontSize:
                                                                    16,
                                                                    letterSpacing:
                                                                    0,
                                                                    useGoogleFonts:
                                                                    GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineLargeFamily),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Text(
                                                                      'Fecha de nacimiento',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyMedium
                                                                          .override(
                                                                        fontFamily:
                                                                        FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        letterSpacing:
                                                                        0,
                                                                        useGoogleFonts:
                                                                        GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Text(
                                                                      'Fecha de fallecimiento',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyMedium
                                                                          .override(
                                                                        fontFamily:
                                                                        FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        letterSpacing:
                                                                        0,
                                                                        useGoogleFonts:
                                                                        GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Text(
                                                                      dateTimeFormat(
                                                                        "d/M/y",
                                                                        mapaFamiliaresRecord
                                                                            .fechaNacimiento!,
                                                                        locale:
                                                                        FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyMedium
                                                                          .override(
                                                                        fontFamily:
                                                                        FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        letterSpacing:
                                                                        0,
                                                                        useGoogleFonts:
                                                                        GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                      children: [],
                                                                    ),
                                                                    Text(
                                                                      dateTimeFormat(
                                                                        "d/M/y",
                                                                        mapaFamiliaresRecord
                                                                            .fechaFallecimiento!,
                                                                        locale:
                                                                        FFLocalizations.of(context).languageCode,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodyMedium
                                                                          .override(
                                                                        fontFamily:
                                                                        FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        letterSpacing:
                                                                        0,
                                                                        useGoogleFonts:
                                                                        GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment:
                                              AlignmentDirectional(1, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(15, 0, 15, 15),
                                                child: Container(
                                                  width: 320,
                                                  height: 467,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                    AlignmentDirectional(
                                                        0, 0),
                                                    child: Builder(
                                                        builder: (context) {
                                                          final _googleMapMarker =
                                                              mapaFamiliaresRecord;
                                                          return FlutterFlowGoogleMap(
                                                            controller: _model
                                                                .googleMapsController,
                                                            onCameraIdle: (latLng) =>
                                                            _model.googleMapsCenter =
                                                                latLng,
                                                            initialLocation: _model
                                                                .googleMapsCenter ??=
                                                            mapaFamiliaresRecord
                                                                .coordenadas!,
                                                            markers: [
                                                              FlutterFlowMarker(
                                                                _googleMapMarker
                                                                    .reference.path,
                                                                _googleMapMarker
                                                                    .coordenadas!,
                                                              ),
                                                            ],
                                                            markerColor:
                                                            GoogleMarkerColor
                                                                .violet,
                                                            markerImage:
                                                            MarkerImage(
                                                              imagePath:
                                                              'assets/images/cementerio.png',
                                                              isAssetImage: true,
                                                              size: 20 ?? 20,
                                                            ),
                                                            mapType: MapType.normal,
                                                            style: GoogleMapStyle
                                                                .standard,
                                                            initialZoom: 14,
                                                            allowInteraction: true,
                                                            allowZoom: true,
                                                            showZoomControls: true,
                                                            showLocation: true,
                                                            showCompass: false,
                                                            showMapToolbar: false,
                                                            showTraffic: false,
                                                            centerMapOnMarkerTap:
                                                            true,
                                                          );
                                                        }),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(5.99, 0.82),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 180, 20),
                                      child: StreamBuilder<FamiliaresRecord>(
                                        stream: FamiliaresRecord.getDocument(
                                            widget!.nombre!),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                CircularProgressIndicator(
                                                  valueColor:
                                                  AlwaysStoppedAnimation<
                                                      Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }

                                          final rutaFamiliaresRecord =
                                          snapshot.data!;

                                          return FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed(
                                                'polyline',
                                                queryParameters: {
                                                  'nombre': serializeParam(
                                                    widget!.nombre,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            text: 'Genera ruta',
                                            options: FFButtonOptions(
                                              height: 40,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(24, 0, 24, 0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                fontFamily:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .titleSmallFamily,
                                                color: Colors.white,
                                                letterSpacing: 0,
                                                useGoogleFonts: GoogleFonts
                                                    .asMap()
                                                    .containsKey(
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .titleSmallFamily),
                                              ),
                                              elevation: 3,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(8),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0.95),
                                    child: wrapWithModel(
                                      model: _model.barraModel,
                                      updateCallback: () => setState(() {}),
                                      child: BarraWidget(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
