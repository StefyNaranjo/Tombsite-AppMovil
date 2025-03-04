import '/auth/firebase_auth/auth_util.dart';
import '/components/barra_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'ajustes_model.dart';
export 'ajustes_model.dart';

class AjustesWidget extends StatefulWidget {
  const AjustesWidget({super.key});

  @override
  State<AjustesWidget> createState() => _AjustesWidgetState();
}

class _AjustesWidgetState extends State<AjustesWidget> {
  late AjustesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AjustesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          title: Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Text(
              'Ajustes',
              style: FlutterFlowTheme.of(context).displaySmall.override(
                fontFamily: 'Gabriela',
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 24,
                letterSpacing: 0,
                fontWeight: FontWeight.w500,
                useGoogleFonts: GoogleFonts.asMap().containsKey('Gabriela'),
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 4,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              constraints: BoxConstraints(
                maxWidth: 600,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Align(
                alignment: AlignmentDirectional(0, -1),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.edit,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 36,
                                          ),
                                          onPressed: () async {
                                            context.pushNamed('edituser');
                                          },
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 0, 0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed('edituser');
                                            },
                                            child: Text(
                                              'Editar Información',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .override(
                                                fontFamily:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .headlineSmallFamily,
                                                letterSpacing: 0,
                                                useGoogleFonts: GoogleFonts
                                                    .asMap()
                                                    .containsKey(
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .headlineSmallFamily),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.live_help,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 36,
                                          ),
                                          onPressed: () async {
                                            var confirmDialogResponse =
                                                await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'Esta seguro que desea cerrar sesión?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: Text(
                                                              'Cancelar'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child: Text(
                                                              'Confirmar'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                    false;
                                            if (confirmDialogResponse) {
                                              GoRouter.of(context)
                                                  .prepareAuthEvent();
                                              await authManager.signOut();
                                              GoRouter.of(context)
                                                  .clearRedirectLocation();

                                              context.pushNamedAuth(
                                                  'inicio', context.mounted);
                                            } else {
                                              context.safePop();
                                            }
                                          },
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 0, 0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              var confirmDialogResponse =
                                                  await showDialog<bool>(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        content: Text(
                                                            'Esta seguro que desea cerrar sesión?'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child: Text(
                                                                'Cancel'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child: Text(
                                                                'Confirm'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                      false;
                                              if (confirmDialogResponse) {
                                                GoRouter.of(context)
                                                    .prepareAuthEvent();
                                                await authManager.signOut();
                                                GoRouter.of(context)
                                                    .clearRedirectLocation();

                                                context.pushNamedAuth(
                                                    'inicio', context.mounted);
                                              }
                                            },
                                            child: Text(
                                              'Cerrar sesión',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .override(
                                                fontFamily:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .headlineSmallFamily,
                                                letterSpacing: 0,
                                                useGoogleFonts: GoogleFonts
                                                    .asMap()
                                                    .containsKey(
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .headlineSmallFamily),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.group_add,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 36,
                                          ),
                                          onPressed: () async {
                                            context.pushNamed(
                                                'addRegistro_widget');
                                          },
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 0, 0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                  'addRegistro_widget');
                                            },
                                            child: Text(
                                              'Deseas añadir a un familiar?',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .override(
                                                fontFamily:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .headlineSmallFamily,
                                                letterSpacing: 0,
                                                useGoogleFonts: GoogleFonts
                                                    .asMap()
                                                    .containsKey(
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .headlineSmallFamily),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.delete_forever,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 36,
                                          ),
                                          onPressed: () async {
                                            var confirmDialogResponse =
                                                await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      content: Text(
                                                          'Esta seguro que desea eliminar su usuario?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: Text(
                                                              'Cancelar'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child: Text(
                                                              'Confirmar'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                    false;
                                            if (confirmDialogResponse) {
                                              await authManager
                                                  .deleteUser(context);

                                              context.pushNamed('inicio');
                                            } else {
                                              context.safePop();
                                            }
                                          },
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 0, 0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              var confirmDialogResponse =
                                                  await showDialog<bool>(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title:
                                                        Text('Peligro'),
                                                        content: Text(
                                                            '¿Esta seguro de eliminar su cuenta?'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child: Text(
                                                                'Cancelar'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child: Text(
                                                                'Eliminar'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                      false;
                                              if (confirmDialogResponse) {
                                                await authManager
                                                    .deleteUser(context);

                                                context.pushNamed('inicio');
                                              } else {
                                                context.pushNamed('ajustes');
                                              }
                                            },
                                            child: Text(
                                              'Eliminar usuario',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .override(
                                                fontFamily:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .headlineSmallFamily,
                                                letterSpacing: 0,
                                                useGoogleFonts: GoogleFonts
                                                    .asMap()
                                                    .containsKey(
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .headlineSmallFamily),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 0,
                                          borderWidth: 0,
                                          buttonSize: 40,
                                          icon: Icon(
                                            Icons.info,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 36,
                                          ),
                                          onPressed: () async {
                                            context.pushNamed('version');
                                          },
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 0, 0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed('version');
                                            },
                                            child: Text(
                                              'Versión',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .override(
                                                fontFamily:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .headlineSmallFamily,
                                                letterSpacing: 0,
                                                useGoogleFonts: GoogleFonts
                                                    .asMap()
                                                    .containsKey(
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .headlineSmallFamily),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
          ),
        ),
      ),
    );
  }
}
