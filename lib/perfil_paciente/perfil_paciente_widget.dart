import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/cambios_paciente_guardados_widget.dart';
import '../components/lista_vacia_widget.dart';
import '../contenidos/contenidos_widget.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../iniciar_sesion/iniciar_sesion_widget.dart';
import '../medicamentos/medicamentos_widget.dart';
import '../pacientes/pacientes_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilPacienteWidget extends StatefulWidget {
  const PerfilPacienteWidget({
    Key key,
    this.pacienteRef,
  }) : super(key: key);

  final DocumentReference pacienteRef;

  @override
  _PerfilPacienteWidgetState createState() => _PerfilPacienteWidgetState();
}

class _PerfilPacienteWidgetState extends State<PerfilPacienteWidget> {
  List<String> categoriasSecundariasValues;
  bool categoriasCambiadas;
  String categoriasContenidosValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Perfil_paciente'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(widget.pacienteRef),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).secondaryColor,
              ),
            ),
          );
        }
        final perfilPacienteUsersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 300,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 24,
                          color: Color(0x1A414141),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/Frame_7173.png',
                              ).image,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 24, 24, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          'Hola Cristina',
                                          style: FlutterFlowTheme.of(context)
                                              .title3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 32),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          'Administrador',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 2,
                                  thickness: 2,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 12),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'PERFIL_PACIENTE_PAGE_Row_e2av1q9t_ON_TAP');
                                            logFirebaseEvent('Row_Navigate-To');
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ContenidosWidget(),
                                              ),
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 4,
                                                height: 46,
                                                decoration: BoxDecoration(),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 8, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Icon(
                                                    FFIcons.kasset25,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Text(
                                                  'Contenidos',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Proxima nova',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        height: 2,
                                        thickness: 1,
                                        indent: 24,
                                        endIndent: 24,
                                        color: Color(0xFFE6E6E6),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 12),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'PERFIL_PACIENTE_PAGE_Row_jtl66k5p_ON_TAP');
                                            logFirebaseEvent('Row_Navigate-To');
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                                reverseDuration:
                                                    Duration(milliseconds: 0),
                                                child: PacientesWidget(),
                                              ),
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 4,
                                                height: 46,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryColor,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 8, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Icon(
                                                    FFIcons.kperfil,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryColor,
                                                    size: 24,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Text(
                                                  'Pacientes',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Proxima nova',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryColor,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        height: 2,
                                        thickness: 1,
                                        indent: 24,
                                        endIndent: 24,
                                        color: Color(0xFFE6E6E6),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 12),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'PERFIL_PACIENTE_PAGE_Row_gah3cyh6_ON_TAP');
                                            logFirebaseEvent('Row_Navigate-To');
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                                reverseDuration:
                                                    Duration(milliseconds: 0),
                                                child: MedicamentosWidget(),
                                              ),
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 4,
                                                height: 46,
                                                decoration: BoxDecoration(),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 8, 0),
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Icon(
                                                    FFIcons.kasset19,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Text(
                                                  'Medicamentos',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Proxima nova',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: false,
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
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'PERFIL_PACIENTE_PAGE_Text_z78wm5ip_ON_TAP');
                                      logFirebaseEvent('Text_Auth');
                                      await signOut();
                                      await Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              IniciarSesionWidget(),
                                        ),
                                        (r) => false,
                                      );
                                    },
                                    child: Text(
                                      'Cerrar sesión',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Proxima nova',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: false,
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
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24, 16, 24, 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 16, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'PERFIL_PACIENTE_PAGE_ContainerBack_ON_TAP');
                                            logFirebaseEvent(
                                                'ContainerBack_Navigate-Back');
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                )
                                              ],
                                              shape: BoxShape.circle,
                                            ),
                                            alignment: AlignmentDirectional(
                                                -0.050000000000000044, 0),
                                            child: Icon(
                                              Icons.chevron_left_rounded,
                                              color: Colors.black,
                                              size: 32,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          '${perfilPacienteUsersRecord.name} ${perfilPacienteUsersRecord.lastName}',
                                          style: FlutterFlowTheme.of(context)
                                              .title1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 0, 24, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 400,
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 16, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 66,
                                                                    0, 0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiaryColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24,
                                                                        72,
                                                                        24,
                                                                        24),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          16),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'Información personal',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .title3,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          16),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Nombre',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    perfilPacienteUsersRecord.name,
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          16),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Apellido',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    perfilPacienteUsersRecord.lastName,
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          16),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Sexo',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    perfilPacienteUsersRecord.gender,
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Edad',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    '${perfilPacienteUsersRecord.age.toString()} años',
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          16),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Peso',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    '${perfilPacienteUsersRecord.weight} kg',
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Altura',
                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    '${perfilPacienteUsersRecord.height} cm',
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Divider(
                                                                  thickness:
                                                                      1.5,
                                                                  color: Color(
                                                                      0xFFF4F5F9),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          16,
                                                                          0,
                                                                          0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Etapa en el trasplante',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).subtitle1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Container(
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            16,
                                                                            0,
                                                                            12),
                                                                        child: StreamBuilder<
                                                                            List<EtapasTrasplanteRecord>>(
                                                                          stream:
                                                                              queryEtapasTrasplanteRecord(
                                                                            singleRecord:
                                                                                true,
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 20,
                                                                                  height: 20,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<EtapasTrasplanteRecord>
                                                                                containerEtapasTrasplanteRecordList =
                                                                                snapshot.data;
                                                                            // Return an empty Container when the document does not exist.
                                                                            if (snapshot.data.isEmpty) {
                                                                              return Container();
                                                                            }
                                                                            final containerEtapasTrasplanteRecord = containerEtapasTrasplanteRecordList.isNotEmpty
                                                                                ? containerEtapasTrasplanteRecordList.first
                                                                                : null;
                                                                            return Container(
                                                                              decoration: BoxDecoration(),
                                                                              child: FlutterFlowDropDown(
                                                                                initialOption: categoriasContenidosValue ??= perfilPacienteUsersRecord.stage,
                                                                                options: containerEtapasTrasplanteRecord.listado.toList().toList(),
                                                                                onChanged: (val) => setState(() => categoriasContenidosValue = val),
                                                                                width: MediaQuery.of(context).size.width,
                                                                                height: 40,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                      fontFamily: 'Proxima nova',
                                                                                      color: Colors.black,
                                                                                      fontWeight: FontWeight.normal,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                                fillColor: Colors.white,
                                                                                elevation: 2,
                                                                                borderColor: Color(0xFFC9C9C9),
                                                                                borderWidth: 0,
                                                                                borderRadius: 12,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                                                                                hidesUnderline: true,
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(24,
                                                                    16, 24, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 100,
                                                              height: 100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFEEEEEE),
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  image: Image
                                                                      .asset(
                                                                    'assets/images/Avatar.png',
                                                                  ).image,
                                                                ),
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 72, 16, 0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 16),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24,
                                                                      24,
                                                                      24,
                                                                      24),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'Recomendación de contenidos',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .title3,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            12,
                                                                            0,
                                                                            12),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              StreamBuilder<List<CategoriasRecord>>(
                                                                            stream:
                                                                                queryCategoriasRecord(
                                                                              singleRecord: true,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
                                                                              // Customize what your widget looks like when it's loading.
                                                                              if (!snapshot.hasData) {
                                                                                return Center(
                                                                                  child: SizedBox(
                                                                                    width: 20,
                                                                                    height: 20,
                                                                                    child: CircularProgressIndicator(
                                                                                      color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }
                                                                              List<CategoriasRecord> wrapCategoriasRecordList = snapshot.data;
                                                                              // Return an empty Container when the document does not exist.
                                                                              if (snapshot.data.isEmpty) {
                                                                                return Container();
                                                                              }
                                                                              final wrapCategoriasRecord = wrapCategoriasRecordList.isNotEmpty ? wrapCategoriasRecordList.first : null;
                                                                              return InkWell(
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('PERFIL_PACIENTE_PAGE_Wrap_gd3vj33y_ON_TAP');
                                                                                  logFirebaseEvent('Wrap_Custom-Action');
                                                                                  categoriasCambiadas = await actions.checkListas(
                                                                                    categoriasSecundariasValues.toList(),
                                                                                    perfilPacienteUsersRecord.categoriasRecomendadas.toList(),
                                                                                  );
                                                                                  logFirebaseEvent('Wrap_Update-Local-State');
                                                                                  setState(() => FFAppState().categoriasCambiadas = functions.getCambiosCategorias(categoriasSecundariasValues.toList(), perfilPacienteUsersRecord.categoriasRecomendadas.toList()));

                                                                                  setState(() {});
                                                                                },
                                                                                child: Wrap(
                                                                                  spacing: 8,
                                                                                  runSpacing: 0,
                                                                                  alignment: WrapAlignment.start,
                                                                                  crossAxisAlignment: WrapCrossAlignment.start,
                                                                                  direction: Axis.horizontal,
                                                                                  runAlignment: WrapAlignment.start,
                                                                                  verticalDirection: VerticalDirection.down,
                                                                                  clipBehavior: Clip.none,
                                                                                  children: [
                                                                                    FlutterFlowChoiceChips(
                                                                                      initiallySelected: categoriasSecundariasValues != null ? categoriasSecundariasValues : perfilPacienteUsersRecord.categoriasRecomendadas.toList(),
                                                                                      options: (wrapCategoriasRecord.listado.toList() ?? []).map((label) => ChipData(label)).toList(),
                                                                                      onChanged: (val) => setState(() => categoriasSecundariasValues = val),
                                                                                      selectedChipStyle: ChipStyle(
                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                              fontFamily: 'Proxima nova',
                                                                                              color: Colors.white,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                        iconColor: Colors.white,
                                                                                        iconSize: 18,
                                                                                        elevation: 0,
                                                                                      ),
                                                                                      unselectedChipStyle: ChipStyle(
                                                                                        backgroundColor: Color(0xFFE6F0FF),
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: 'Proxima nova',
                                                                                              color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                        iconColor: Color(0xFF323B45),
                                                                                        iconSize: 18,
                                                                                        elevation: 0,
                                                                                      ),
                                                                                      chipSpacing: 8,
                                                                                      multiselect: true,
                                                                                      initialized: categoriasSecundariasValues != null,
                                                                                      alignment: WrapAlignment.start,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 16),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24,
                                                                      24,
                                                                      24,
                                                                      24),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Esquema de medicamentos',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3,
                                                                  ),
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            16,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: StreamBuilder<
                                                                      List<
                                                                          EsquemaMedicamentoRecord>>(
                                                                    stream:
                                                                        queryEsquemaMedicamentoRecord(
                                                                      queryBuilder: (esquemaMedicamentoRecord) => esquemaMedicamentoRecord.where(
                                                                          'usuario_asignado',
                                                                          arrayContains:
                                                                              perfilPacienteUsersRecord.reference),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                20,
                                                                            height:
                                                                                20,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              color: FlutterFlowTheme.of(context).secondaryColor,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<EsquemaMedicamentoRecord>
                                                                          columnEsquemaMedicamentoRecordList =
                                                                          snapshot
                                                                              .data;
                                                                      if (columnEsquemaMedicamentoRecordList
                                                                          .isEmpty) {
                                                                        return Container(
                                                                          height:
                                                                              200,
                                                                          child:
                                                                              ListaVaciaWidget(
                                                                            massage:
                                                                                'El usuario no tiene esquemas asignados',
                                                                          ),
                                                                        );
                                                                      }
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(
                                                                            columnEsquemaMedicamentoRecordList.length,
                                                                            (columnIndex) {
                                                                          final columnEsquemaMedicamentoRecord =
                                                                              columnEsquemaMedicamentoRecordList[columnIndex];
                                                                          return Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                16),
                                                                            child:
                                                                                StreamBuilder<MedicamentosRecord>(
                                                                              stream: MedicamentosRecord.getDocument(columnEsquemaMedicamentoRecord.medicamento),
                                                                              builder: (context, snapshot) {
                                                                                // Customize what your widget looks like when it's loading.
                                                                                if (!snapshot.hasData) {
                                                                                  return Center(
                                                                                    child: SizedBox(
                                                                                      width: 20,
                                                                                      height: 20,
                                                                                      child: CircularProgressIndicator(
                                                                                        color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                                final containerMedicamentosRecord = snapshot.data;
                                                                                return Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 24,
                                                                                        color: Color(0x1A414141),
                                                                                      )
                                                                                    ],
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Builder(
                                                                                                builder: (context) {
                                                                                                  final horasDeToma = columnEsquemaMedicamentoRecord.horasDeToma.toList()?.toList() ?? [];
                                                                                                  return Wrap(
                                                                                                    spacing: 16,
                                                                                                    runSpacing: 8,
                                                                                                    alignment: WrapAlignment.start,
                                                                                                    crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                    direction: Axis.horizontal,
                                                                                                    runAlignment: WrapAlignment.start,
                                                                                                    verticalDirection: VerticalDirection.down,
                                                                                                    clipBehavior: Clip.none,
                                                                                                    children: List.generate(horasDeToma.length, (horasDeTomaIndex) {
                                                                                                      final horasDeTomaItem = horasDeToma[horasDeTomaIndex];
                                                                                                      return Container(
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: Color(0xFFEEEEEE),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                                                                                                          child: Container(
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                            ),
                                                                                                            child: Text(
                                                                                                              dateTimeFormat('jm', horasDeTomaItem),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Proxima nova',
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                    useGoogleFonts: false,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    }),
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 8),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                            children: [
                                                                                              Container(
                                                                                                decoration: BoxDecoration(),
                                                                                                child: Text(
                                                                                                  containerMedicamentosRecord.principioActivo,
                                                                                                  style: FlutterFlowTheme.of(context).subtitle1,
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                                child: Container(
                                                                                                  decoration: BoxDecoration(),
                                                                                                  child: Text(
                                                                                                    columnEsquemaMedicamentoRecord.indicacionesDeConsumo,
                                                                                                    style: FlutterFlowTheme.of(context).bodyText2,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                                                                                          child: Container(
                                                                                            width: double.infinity,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Dosis',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText2,
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            '${columnEsquemaMedicamentoRecord.dosis} (${containerMedicamentosRecord.formaFarmaceutica})',
                                                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                                  fontFamily: 'Proxima nova',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  useGoogleFonts: false,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            dateTimeFormat('d/M/y', columnEsquemaMedicamentoRecord.fechaInicio),
                                                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                                  fontFamily: 'Proxima nova',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  useGoogleFonts: false,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Fecha de inicio',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText2,
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Fecha de finalización',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText2,
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            valueOrDefault<String>(
                                                                                                              dateTimeFormat('d/M/y', columnEsquemaMedicamentoRecord.fechaFinalizacion),
                                                                                                              'No definida',
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                                  fontFamily: 'Proxima nova',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  useGoogleFonts: false,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ),
                                                                          );
                                                                        }),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 16),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24,
                                                                      24,
                                                                      24,
                                                                      24),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Citas programadas',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3,
                                                                  ),
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            16,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: StreamBuilder<
                                                                      List<
                                                                          CitasAsignadasRecord>>(
                                                                    stream:
                                                                        queryCitasAsignadasRecord(
                                                                      queryBuilder: (citasAsignadasRecord) => citasAsignadasRecord.where(
                                                                          'usuario_asignado',
                                                                          arrayContains:
                                                                              perfilPacienteUsersRecord.reference),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                20,
                                                                            height:
                                                                                20,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              color: FlutterFlowTheme.of(context).secondaryColor,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<CitasAsignadasRecord>
                                                                          columnCitasAsignadasRecordList =
                                                                          snapshot
                                                                              .data;
                                                                      if (columnCitasAsignadasRecordList
                                                                          .isEmpty) {
                                                                        return Container(
                                                                          height:
                                                                              150,
                                                                          child:
                                                                              ListaVaciaWidget(
                                                                            massage:
                                                                                'El usuario no tiene citas programadas',
                                                                          ),
                                                                        );
                                                                      }
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(
                                                                            columnCitasAsignadasRecordList.length,
                                                                            (columnIndex) {
                                                                          final columnCitasAsignadasRecord =
                                                                              columnCitasAsignadasRecordList[columnIndex];
                                                                          return Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                16),
                                                                            child:
                                                                                StreamBuilder<CitasAsignadasRecord>(
                                                                              stream: CitasAsignadasRecord.getDocument(columnCitasAsignadasRecord.reference),
                                                                              builder: (context, snapshot) {
                                                                                // Customize what your widget looks like when it's loading.
                                                                                if (!snapshot.hasData) {
                                                                                  return Center(
                                                                                    child: SizedBox(
                                                                                      width: 20,
                                                                                      height: 20,
                                                                                      child: CircularProgressIndicator(
                                                                                        color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                                final containerCitasAsignadasRecord = snapshot.data;
                                                                                return Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 24,
                                                                                        color: Color(0x1A414141),
                                                                                      )
                                                                                    ],
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Wrap(
                                                                                                spacing: 16,
                                                                                                runSpacing: 8,
                                                                                                alignment: WrapAlignment.start,
                                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                direction: Axis.horizontal,
                                                                                                runAlignment: WrapAlignment.start,
                                                                                                verticalDirection: VerticalDirection.down,
                                                                                                clipBehavior: Clip.none,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Color(0xFFEEEEEE),
                                                                                                      borderRadius: BorderRadius.circular(8),
                                                                                                    ),
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                                                                                                      child: Container(
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                        ),
                                                                                                        child: Text(
                                                                                                          '${dateTimeFormat('d/M/y', containerCitasAsignadasRecord.dia)} ${dateTimeFormat('jm', containerCitasAsignadasRecord.hora)}',
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Proxima nova',
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: false,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                                                                                          child: Container(
                                                                                            width: double.infinity,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                              Expanded(
                                                                                                                child: Text(
                                                                                                                  containerCitasAsignadasRecord.nombreAsignado,
                                                                                                                  style: FlutterFlowTheme.of(context).subtitle1,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.location_on,
                                                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                                size: 16,
                                                                                                              ),
                                                                                                            ),
                                                                                                            Text(
                                                                                                              containerCitasAsignadasRecord.lugar,
                                                                                                              style: FlutterFlowTheme.of(context).bodyText2,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Expanded(
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              'Profesional encargado',
                                                                                                              style: FlutterFlowTheme.of(context).bodyText2,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: Text(
                                                                                                                containerCitasAsignadasRecord.profesionalEncargado,
                                                                                                                style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                                      fontFamily: 'Proxima nova',
                                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                      useGoogleFonts: false,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ],
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
                                                                                );
                                                                              },
                                                                            ),
                                                                          );
                                                                        }),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 16),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24,
                                                                      24,
                                                                      24,
                                                                      24),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Medición de indicadores',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3,
                                                                  ),
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            16,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: StreamBuilder<
                                                                      List<
                                                                          EsquemaIndicadoresRecord>>(
                                                                    stream:
                                                                        queryEsquemaIndicadoresRecord(
                                                                      queryBuilder: (esquemaIndicadoresRecord) => esquemaIndicadoresRecord.where(
                                                                          'usuario_asignado',
                                                                          arrayContains:
                                                                              perfilPacienteUsersRecord.reference),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                20,
                                                                            height:
                                                                                20,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              color: FlutterFlowTheme.of(context).secondaryColor,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<EsquemaIndicadoresRecord>
                                                                          columnEsquemaIndicadoresRecordList =
                                                                          snapshot
                                                                              .data;
                                                                      if (columnEsquemaIndicadoresRecordList
                                                                          .isEmpty) {
                                                                        return Container(
                                                                          height:
                                                                              200,
                                                                          child:
                                                                              ListaVaciaWidget(
                                                                            massage:
                                                                                'El usuario no tiene esquemas asignados',
                                                                          ),
                                                                        );
                                                                      }
                                                                      return Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(
                                                                            columnEsquemaIndicadoresRecordList.length,
                                                                            (columnIndex) {
                                                                          final columnEsquemaIndicadoresRecord =
                                                                              columnEsquemaIndicadoresRecordList[columnIndex];
                                                                          return Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                16),
                                                                            child:
                                                                                StreamBuilder<EsquemaIndicadoresRecord>(
                                                                              stream: EsquemaIndicadoresRecord.getDocument(columnEsquemaIndicadoresRecord.reference),
                                                                              builder: (context, snapshot) {
                                                                                // Customize what your widget looks like when it's loading.
                                                                                if (!snapshot.hasData) {
                                                                                  return Center(
                                                                                    child: SizedBox(
                                                                                      width: 20,
                                                                                      height: 20,
                                                                                      child: CircularProgressIndicator(
                                                                                        color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                }
                                                                                final containerEsquemaIndicadoresRecord = snapshot.data;
                                                                                return Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 24,
                                                                                        color: Color(0x1A414141),
                                                                                      )
                                                                                    ],
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 8),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                            children: [
                                                                                              Container(
                                                                                                decoration: BoxDecoration(),
                                                                                                child: Text(
                                                                                                  containerEsquemaIndicadoresRecord.tipo,
                                                                                                  style: FlutterFlowTheme.of(context).subtitle1,
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                                child: Container(
                                                                                                  decoration: BoxDecoration(),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                                                                                          child: Container(
                                                                                            width: double.infinity,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Veces al día',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText2,
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            '${containerEsquemaIndicadoresRecord.vecesAlDia}',
                                                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                                  fontFamily: 'Proxima nova',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  useGoogleFonts: false,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Fecha de inicio',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText2,
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            dateTimeFormat('d/M/y', containerEsquemaIndicadoresRecord.fechaInicio),
                                                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                                  fontFamily: 'Proxima nova',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  useGoogleFonts: false,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Expanded(
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            'Fecha de finalización',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText2,
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            valueOrDefault<String>(
                                                                                                              containerEsquemaIndicadoresRecord.fechaFinalizacion.toString(),
                                                                                                              'No definida',
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                                  fontFamily: 'Proxima nova',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                  useGoogleFonts: false,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ),
                                                                          );
                                                                        }),
                                                                      );
                                                                    },
                                                                  ),
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 24,
                                  color: Color(0x1A414141),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24, 16, 24, 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Wrap(
                                    spacing: 24,
                                    runSpacing: 0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'PERFIL_PACIENTE_PAGE_cancelar_ON_TAP');
                                          logFirebaseEvent(
                                              'cancelar_Navigate-Back');
                                          Navigator.pop(context);
                                        },
                                        text: 'Cancelar',
                                        options: FFButtonOptions(
                                          width: 200,
                                          height: 50,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Proxima nova',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            width: 1,
                                          ),
                                          borderRadius: 12,
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'PERFIL_PACIENTE_PAGE_guardar-contenido_ON_TAP');
                                          logFirebaseEvent(
                                              'guardar-contenido_Backend-Call');

                                          final usersUpdateData = {
                                            ...createUsersRecordData(
                                              stage: categoriasContenidosValue,
                                            ),
                                            'categorias_recomendadas':
                                                categoriasSecundariasValues,
                                          };
                                          await perfilPacienteUsersRecord
                                              .reference
                                              .update(usersUpdateData);
                                          logFirebaseEvent(
                                              'guardar-contenido_Bottom-Sheet');
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child:
                                                    CambiosPacienteGuardadosWidget(),
                                              );
                                            },
                                          );
                                        },
                                        text: 'Guardar cambios',
                                        options: FFButtonOptions(
                                          width: 200,
                                          height: 50,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Proxima nova',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                          elevation: 0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
