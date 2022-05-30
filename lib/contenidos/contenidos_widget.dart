import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../iniciar_sesion/iniciar_sesion_widget.dart';
import '../nuevo_contenido/nuevo_contenido_widget.dart';
import '../pacientes/pacientes_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ContenidosWidget extends StatefulWidget {
  const ContenidosWidget({Key key}) : super(key: key);

  @override
  _ContenidosWidgetState createState() => _ContenidosWidgetState();
}

class _ContenidosWidgetState extends State<ContenidosWidget> {
  String categoriasContenidosValue1;
  String categoriasContenidosValue2;
  TextEditingController mailController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Contenidos'});
    mailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CategoriasRecord>>(
      stream: queryCategoriasRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitSquareCircle(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        List<CategoriasRecord> contenidosCategoriasRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final contenidosCategoriasRecord =
            contenidosCategoriasRecordList.isNotEmpty
                ? contenidosCategoriasRecordList.first
                : null;
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
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 4,
                                              height: 46,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                              ),
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
                                                      .secondaryColor,
                                                  size: 24,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Text(
                                                'Contenidos',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Proxima nova',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                'CONTENIDOS_PAGE_Row_30towkvb_ON_TAP');
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
                                                decoration: BoxDecoration(),
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
                                                        .secondaryText,
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
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Proxima nova',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                          'CONTENIDOS_PAGE_Text_omlz1ehh_ON_TAP');
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Text(
                                      'Contenidos',
                                      style:
                                          FlutterFlowTheme.of(context).title1,
                                    ),
                                  ),
                                  Container(
                                    width: 400,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: TextFormField(
                                      controller: mailController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Buscar contenidos',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Proxima nova',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Proxima nova',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFC9C9C9),
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFC9C9C9),
                                            width: 0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                23, 24, 20, 24),
                                        prefixIcon: Icon(
                                          FFIcons.kasset31,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 16,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Proxima nova',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'CONTENIDOS_PAGE_Button-Login_ON_TAP');
                                      logFirebaseEvent(
                                          'Button-Login_Navigate-To');
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                          reverseDuration:
                                              Duration(milliseconds: 0),
                                          child: NuevoContenidoWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Nuevo contenido',
                                    options: FFButtonOptions(
                                      width: 200,
                                      height: 50,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Proxima nova',
                                            color: FlutterFlowTheme.of(context)
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
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24, 24, 24, 24),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 24),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              StreamBuilder<
                                                  List<CategoriasRecord>>(
                                                stream: queryCategoriasRecord(
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            SpinKitSquareCircle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          size: 50,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<CategoriasRecord>
                                                      containerCategoriasRecordList =
                                                      snapshot.data;
                                                  // Return an empty Container when the document does not exist.
                                                  if (snapshot.data.isEmpty) {
                                                    return Container();
                                                  }
                                                  final containerCategoriasRecord =
                                                      containerCategoriasRecordList
                                                              .isNotEmpty
                                                          ? containerCategoriasRecordList
                                                              .first
                                                          : null;
                                                  return Container(
                                                    width: 250,
                                                    height: 50,
                                                    decoration: BoxDecoration(),
                                                    child: FlutterFlowDropDown(
                                                      options:
                                                          containerCategoriasRecord
                                                              .listado
                                                              .toList()
                                                              .toList(),
                                                      onChanged: (val) =>
                                                          setState(() =>
                                                              categoriasContenidosValue1 =
                                                                  val),
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 50,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Proxima nova',
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                      hintText: 'Categoria',
                                                      fillColor: Colors.white,
                                                      elevation: 2,
                                                      borderColor:
                                                          Color(0xFFC9C9C9),
                                                      borderWidth: 0,
                                                      borderRadius: 12,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 4, 12, 4),
                                                      hidesUnderline: true,
                                                    ),
                                                  );
                                                },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 0, 0, 0),
                                                child: StreamBuilder<
                                                    List<CategoriasRecord>>(
                                                  stream: queryCategoriasRecord(
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              SpinKitSquareCircle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                            size: 50,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<CategoriasRecord>
                                                        containerCategoriasRecordList =
                                                        snapshot.data;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot.data.isEmpty) {
                                                      return Container();
                                                    }
                                                    final containerCategoriasRecord =
                                                        containerCategoriasRecordList
                                                                .isNotEmpty
                                                            ? containerCategoriasRecordList
                                                                .first
                                                            : null;
                                                    return Container(
                                                      width: 450,
                                                      height: 50,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child:
                                                          FlutterFlowDropDown(
                                                        options:
                                                            containerCategoriasRecord
                                                                .etapasTrasplante
                                                                .toList()
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            setState(() =>
                                                                categoriasContenidosValue2 =
                                                                    val),
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        height: 50,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Proxima nova',
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        hintText:
                                                            'Etapa del trasplante',
                                                        fillColor: Colors.white,
                                                        elevation: 2,
                                                        borderColor:
                                                            Color(0xFFC9C9C9),
                                                        borderWidth: 0,
                                                        borderRadius: 12,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 4,
                                                                    12, 4),
                                                        hidesUnderline: true,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        StreamBuilder<List<ContenidosRecord>>(
                                          stream: queryContenidosRecord(),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child: SpinKitSquareCircle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 50,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<ContenidosRecord>
                                                wrapContenidosRecordList =
                                                snapshot.data;
                                            return Wrap(
                                              spacing: 16,
                                              runSpacing: 0,
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: List.generate(
                                                  wrapContenidosRecordList
                                                      .length, (wrapIndex) {
                                                final wrapContenidosRecord =
                                                    wrapContenidosRecordList[
                                                        wrapIndex];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 12),
                                                  child: Container(
                                                    width: 300,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiaryColor,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 24,
                                                          color:
                                                              Color(0x1A414141),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 120,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFEEEEEE),
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .fill,
                                                                    image: Image
                                                                        .network(
                                                                      wrapContenidosRecord
                                                                          .preview,
                                                                    ).image,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            12),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            12),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16,
                                                                            16,
                                                                            16,
                                                                            16),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              wrapContenidosRecord.categoriaPrincipal,
                                                                              style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                    fontFamily: 'Proxima nova',
                                                                                    fontSize: 14,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Text(
                                                                                    wrapContenidosRecord.nombre,
                                                                                    style: FlutterFlowTheme.of(context).bodyText1,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              16,
                                                                              16,
                                                                              16,
                                                                              16),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Icon(
                                                                          FFIcons
                                                                              .kasset26,
                                                                          color:
                                                                              Color(0xFFC6CADB),
                                                                          size:
                                                                              16,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }),
                                            );
                                          },
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
