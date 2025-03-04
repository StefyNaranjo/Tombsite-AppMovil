import '/components/barra_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import 'package:geolocator/geolocator.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'addregistro_model.dart';
export 'addregistro_model.dart';

class AddRegistroWidget extends StatefulWidget {
  const AddRegistroWidget({super.key});

  @override
  State<AddRegistroWidget> createState() =>
      _AddRegistroWidgetState();
}

class _AddRegistroWidgetState extends State<AddRegistroWidget> {
  late AddRegistroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddRegistroModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
      _model.textController3?.text = '10/10/2000';
      _model.textController4?.text = '10/10/2024';
    }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }
  String _coordenadas = '';

  void _handleTap() async {
    final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _coordenadas = 'Latitud: ${position.latitude}, Longitud: ${position.longitude}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 90,
              icon: Icon(
                Icons.chevron_left_outlined,
                color: Color(0xFFEDF2FA),
                size: 60,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Solicitud de registro',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily:
                  FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  fontSize: 22,
                  letterSpacing: 0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 2,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                      child: Container(
                        width: 372,
                        height: 589,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.25, -0.76),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 8, 8, 8),
                                  child: Container(
                                    width: 320,
                                    child: TextFormField(
                                      controller: _model.textController1,
                                      focusNode: _model.textFieldFocusNode1,
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                        'Añada el nombre del familiar a registrar',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily:
                                          FlutterFlowTheme.of(context)
                                              .labelMediumFamily,
                                          letterSpacing: 0,
                                          useGoogleFonts: GoogleFonts
                                              .asMap()
                                              .containsKey(
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .labelMediumFamily),
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily:
                                          FlutterFlowTheme.of(context)
                                              .labelMediumFamily,
                                          letterSpacing: 0,
                                          useGoogleFonts: GoogleFonts
                                              .asMap()
                                              .containsKey(
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .labelMediumFamily),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder:
                                        UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily:
                                        FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                      ),
                                      textAlign: TextAlign.center,
                                      validator: _model.textController1Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, -0.97),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 8),
                                  child: Container(
                                    width: 320,
                                    child: TextFormField(
                                      controller: _model.textController2,
                                      focusNode: _model.textFieldFocusNode2,
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Añada su correo',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily:
                                          FlutterFlowTheme.of(context)
                                              .labelMediumFamily,
                                          letterSpacing: 0,
                                          useGoogleFonts: GoogleFonts
                                              .asMap()
                                              .containsKey(
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .labelMediumFamily),
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily:
                                          FlutterFlowTheme.of(context)
                                              .labelMediumFamily,
                                          letterSpacing: 0,
                                          useGoogleFonts: GoogleFonts
                                              .asMap()
                                              .containsKey(
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .labelMediumFamily),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder:
                                        UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily:
                                        FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      validator: _model.textController2Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.08, -0.46),
                                child: Text(
                                  'Ingrese la fecha cumpliendo el siguiente \nformato: dia/ mes/ año => 10/10/2010',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                        FlutterFlowTheme.of(context)
                                            .bodyMediumFamily),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.18, -0.19),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Container(
                                    width: 320,
                                    child: TextFormField(
                                      controller: _model.textController3,
                                      focusNode: _model.textFieldFocusNode3,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                        'Ingrese la fecha de nacimiento',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily:
                                          FlutterFlowTheme.of(context)
                                              .labelMediumFamily,
                                          letterSpacing: 0,
                                          useGoogleFonts: GoogleFonts
                                              .asMap()
                                              .containsKey(
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .labelMediumFamily),
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily:
                                          FlutterFlowTheme.of(context)
                                              .labelMediumFamily,
                                          letterSpacing: 0,
                                          useGoogleFonts: GoogleFonts
                                              .asMap()
                                              .containsKey(
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .labelMediumFamily),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder:
                                        UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily:
                                        FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                      ),
                                      keyboardType: TextInputType.datetime,
                                      validator: _model.textController3Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.06, 0.08),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: Container(
                                    width: 320,
                                    child: TextFormField(
                                      controller: _model.textController4,
                                      focusNode: _model.textFieldFocusNode4,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                        'Ingrese la fecha de fallecimiento',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily:
                                          FlutterFlowTheme.of(context)
                                              .labelMediumFamily,
                                          letterSpacing: 0,
                                          useGoogleFonts: GoogleFonts
                                              .asMap()
                                              .containsKey(
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .labelMediumFamily),
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                          fontFamily:
                                          FlutterFlowTheme.of(context)
                                              .labelMediumFamily,
                                          letterSpacing: 0,
                                          useGoogleFonts: GoogleFonts
                                              .asMap()
                                              .containsKey(
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .labelMediumFamily),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder:
                                        UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily:
                                        FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                      ),
                                      validator: _model.textController4Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: _handleTap,
                                child: Text('Obtener Coordenadas'),
                              ),
                              Text(
                                _coordenadas,
                                style: TextStyle(fontSize: 20),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.09, 0.8),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await launchUrl(Uri(
                                        scheme: 'mailto',
                                        path: 'tombsiteapp@gmail.com',
                                        query: {
                                          'subject': 'Añadir registro',
                                          'body':[
                                            'El usuario ',
                                            _model.textController2.text,
                                            ', requiere que se añada al registro el nombre de:',
                                            _model.textController1.text,
                                            ' cuya fecha de nacimiento es:  ',
                                            _model.textController3.text,
                                            ' y cuya fecha de fallecimiento es: ',
                                            _model.textController4.text,
                                            ', su ubicacion es:  ',
                                            _coordenadas,
                                            '.',
                                          ].join('').trim(),
                                        }
                                            .entries
                                            .map((MapEntry<String, String> e) =>
                                        '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                            .join('&')));
                                  },
                                  text: 'Enviar datos',
                                  options: FFButtonOptions(
                                    height: 40,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 24, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily:
                                      FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.white,
                                      letterSpacing: 0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .titleSmallFamily),
                                    ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: wrapWithModel(
                  model: _model.barraModel,
                  updateCallback: () => setState(() {}),
                  child: BarraWidget(
                    hidden: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
