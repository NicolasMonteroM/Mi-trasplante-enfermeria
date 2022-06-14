import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/contenido_creado_widget.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../iniciar_sesion/iniciar_sesion_widget.dart';
import '../pacientes/pacientes_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NuevoContenidoWidget extends StatefulWidget {
  const NuevoContenidoWidget({Key key}) : super(key: key);

  @override
  _NuevoContenidoWidgetState createState() => _NuevoContenidoWidgetState();
}

class _NuevoContenidoWidgetState extends State<NuevoContenidoWidget> {
  List<String> categoriasSecundariasValues;
  String uploadedFileUrl1 = '';
  TextEditingController nameController;
  String categoriasContenidosValue;
  TextEditingController nuevaCategoriaContenidosController;
  List<String> etapasValues;
  String uploadedFileUrl10 = '';
  String uploadedFileUrl11 = '';
  String imagenTipoValue5;
  TextEditingController claveMicro5Controller;
  TextEditingController infoMicro5Controller;
  String uploadedFileUrl2 = '';
  String uploadedFileUrl3 = '';
  String imagenTipoValue1;
  TextEditingController claveMicro1Controller;
  TextEditingController infoMicro1Controller;
  String uploadedFileUrl4 = '';
  String uploadedFileUrl5 = '';
  String imagenTipoValue2;
  TextEditingController claveMicro2Controller;
  TextEditingController infoMicro2Controller;
  String uploadedFileUrl6 = '';
  String uploadedFileUrl7 = '';
  String imagenTipoValue3;
  TextEditingController claveMicro3Controller;
  TextEditingController infoMicro3Controller;
  String uploadedFileUrl8 = '';
  String uploadedFileUrl9 = '';
  String imagenTipoValue4;
  TextEditingController claveMicro4Controller;
  TextEditingController infoMicro4Controller;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    claveMicro1Controller = TextEditingController();
    infoMicro1Controller = TextEditingController();
    claveMicro2Controller = TextEditingController();
    infoMicro2Controller = TextEditingController();
    claveMicro3Controller = TextEditingController();
    infoMicro3Controller = TextEditingController();
    claveMicro4Controller = TextEditingController();
    infoMicro4Controller = TextEditingController();
    claveMicro5Controller = TextEditingController();
    infoMicro5Controller = TextEditingController();
    nameController = TextEditingController();
    nuevaCategoriaContenidosController = TextEditingController();
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
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).secondaryColor,
              ),
            ),
          );
        }
        List<CategoriasRecord> nuevoContenidoCategoriasRecordList =
            snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final nuevoContenidoCategoriasRecord =
            nuevoContenidoCategoriasRecordList.isNotEmpty
                ? nuevoContenidoCategoriasRecordList.first
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
                    child: StreamBuilder<CategoriasRecord>(
                      stream: CategoriasRecord.getDocument(
                          nuevoContenidoCategoriasRecord.reference),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                              ),
                            ),
                          );
                        }
                        final containerCategoriasRecord = snapshot.data;
                        return Container(
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 16, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                          )
                                                        ],
                                                        shape: BoxShape.circle,
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.050000000000000044,
                                                              0),
                                                      child: Icon(
                                                        Icons
                                                            .chevron_left_rounded,
                                                        color: Colors.black,
                                                        size: 32,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: Text(
                                                    'Nuevo contenido',
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24, 0, 24, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    16, 0),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            24,
                                                                            0,
                                                                            40),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24,
                                                                            24,
                                                                            24,
                                                                            24),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              'Información',
                                                                              style: FlutterFlowTheme.of(context).title2.override(
                                                                                    fontFamily: 'Proxima nova',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              24,
                                                                              0,
                                                                              0),
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
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Text(
                                                                                      'Ingrese el nombre principal del contenido educativo / informativo.',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  height: 50,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: nameController,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: Colors.white,
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    keyboardType: TextInputType.name,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              24,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Imagen de previsualización',
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Text(
                                                                                      'Adjunte la imagen de la portada del contenido',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 26, 0, 0),
                                                                                child: InkWell(
                                                                                  onTap: () async {
                                                                                    final selectedMedia = await selectMedia(
                                                                                      imageQuality: 100,
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      final downloadUrls = (await Future.wait(selectedMedia.map((m) async => await uploadData(m.storagePath, m.bytes)))).where((u) => u != null).toList();
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      if (downloadUrls != null && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() => uploadedFileUrl1 = downloadUrls.first);
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Success!',
                                                                                        );
                                                                                      } else {
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Failed to upload media',
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 320,
                                                                                    height: 140,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/agregar_foto.png',
                                                                                        ).image,
                                                                                      ),
                                                                                    ),
                                                                                    child: Visibility(
                                                                                      visible: functions.previewSubida(uploadedFileUrl1) ?? true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: CachedNetworkImage(
                                                                                          imageUrl: valueOrDefault<String>(
                                                                                            uploadedFileUrl1,
                                                                                            'gs://mi-trasplante.appspot.com/users/haaINw1HpShxib9MTqCsm5kuYqB2/uploads/agregar foto.png',
                                                                                          ),
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              24,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Categoría principal',
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Text(
                                                                                      'Seleccione la categoría principal a la que pertenecerá este contenido.',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(),
                                                                              ),
                                                                              if (!(FFAppState().otraCategoriaContenidos) ?? true)
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      setState(() => FFAppState().otraFormaFarmaceutica = true);
                                                                                    },
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      children: [
                                                                                        StreamBuilder<List<CategoriasRecord>>(
                                                                                          stream: queryCategoriasRecord(
                                                                                            singleRecord: true,
                                                                                          ),
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
                                                                                            List<CategoriasRecord> containerCategoriasRecordList = snapshot.data;
                                                                                            // Return an empty Container when the document does not exist.
                                                                                            if (snapshot.data.isEmpty) {
                                                                                              return Container();
                                                                                            }
                                                                                            final containerCategoriasRecord = containerCategoriasRecordList.isNotEmpty ? containerCategoriasRecordList.first : null;
                                                                                            return Container(
                                                                                              width: 250,
                                                                                              height: 50,
                                                                                              decoration: BoxDecoration(),
                                                                                              child: FlutterFlowDropDown(
                                                                                                options: nuevoContenidoCategoriasRecord.listado.toList().toList(),
                                                                                                onChanged: (val) => setState(() => categoriasContenidosValue = val),
                                                                                                width: MediaQuery.of(context).size.width,
                                                                                                height: 50,
                                                                                                textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Proxima nova',
                                                                                                      color: Colors.black,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      useGoogleFonts: false,
                                                                                                    ),
                                                                                                hintText: 'Categoria',
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
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                          child: InkWell(
                                                                                            onTap: () async {
                                                                                              setState(() => FFAppState().otraCategoriaContenidos = true);
                                                                                            },
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                  child: Text(
                                                                                                    'Nueva categoría',
                                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                          fontFamily: 'Proxima nova',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                                          useGoogleFonts: false,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                                Icon(
                                                                                                  FFIcons.kasset18,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                                  size: 16,
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if (FFAppState().otraCategoriaContenidos ?? true)
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Container(
                                                                                        decoration: BoxDecoration(),
                                                                                        child: InkWell(
                                                                                          onTap: () async {
                                                                                            setState(() => FFAppState().otraCategoriaContenidos = false);
                                                                                            setState(() {
                                                                                              nuevaCategoriaContenidosController?.clear();
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            FFIcons.kasset20,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 20,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                        child: Container(
                                                                                          width: 250,
                                                                                          height: 50,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.white,
                                                                                            borderRadius: BorderRadius.circular(8),
                                                                                          ),
                                                                                          child: TextFormField(
                                                                                            controller: nuevaCategoriaContenidosController,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Proxima nova',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Proxima nova',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: Color(0xFFC9C9C9),
                                                                                                  width: 0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(12),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: Color(0xFFC9C9C9),
                                                                                                  width: 0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(12),
                                                                                              ),
                                                                                              filled: true,
                                                                                              fillColor: Colors.white,
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Proxima nova',
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                            keyboardType: TextInputType.name,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              24,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Categorías secundarias',
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: StreamBuilder<List<CategoriasRecord>>(
                                                                                        stream: queryCategoriasRecord(
                                                                                          singleRecord: true,
                                                                                        ),
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
                                                                                          List<CategoriasRecord> wrapCategoriasRecordList = snapshot.data;
                                                                                          // Return an empty Container when the document does not exist.
                                                                                          if (snapshot.data.isEmpty) {
                                                                                            return Container();
                                                                                          }
                                                                                          final wrapCategoriasRecord = wrapCategoriasRecordList.isNotEmpty ? wrapCategoriasRecordList.first : null;
                                                                                          return Wrap(
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
                                                                                                initiallySelected: categoriasSecundariasValues != null ? categoriasSecundariasValues : [],
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
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              24,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Etapa del trasplante',
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Text(
                                                                                      'Seleccione las etapas del trasplante en las que este contenido es relevante',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: StreamBuilder<List<EtapasTrasplanteRecord>>(
                                                                                        stream: queryEtapasTrasplanteRecord(
                                                                                          singleRecord: true,
                                                                                        ),
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
                                                                                          List<EtapasTrasplanteRecord> wrapEtapasTrasplanteRecordList = snapshot.data;
                                                                                          // Return an empty Container when the document does not exist.
                                                                                          if (snapshot.data.isEmpty) {
                                                                                            return Container();
                                                                                          }
                                                                                          final wrapEtapasTrasplanteRecord = wrapEtapasTrasplanteRecordList.isNotEmpty ? wrapEtapasTrasplanteRecordList.first : null;
                                                                                          return Wrap(
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
                                                                                                initiallySelected: etapasValues != null ? etapasValues : [],
                                                                                                options: (wrapEtapasTrasplanteRecord.listado.toList() ?? []).map((label) => ChipData(label)).toList(),
                                                                                                onChanged: (val) => setState(() => etapasValues = val),
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
                                                                                                initialized: etapasValues != null,
                                                                                                alignment: WrapAlignment.start,
                                                                                              ),
                                                                                            ],
                                                                                          );
                                                                                        },
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
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    16, 0),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            24,
                                                                            0,
                                                                            16),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24,
                                                                            24,
                                                                            24,
                                                                            24),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              'Micro-contenidos',
                                                                              style: FlutterFlowTheme.of(context).title2.override(
                                                                                    fontFamily: 'Proxima nova',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Text(
                                                                                      'Ingrese la información de los micro-contenidos que se mostrarán en formato historia.',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Text(
                                                                                        'Nota: recuerda que el tipo de formato en historia require información corta y concisa. La información debe ser mostrada lo más fácil posible para que cualquier paciente pueda entenderla.',
                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                              fontFamily: 'Proxima nova',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              useGoogleFonts: false,
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
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            16),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24,
                                                                            24,
                                                                            24,
                                                                            24),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              'Primer micro-contenido',
                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                    fontFamily: 'Proxima nova',
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Imagen',
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: FlutterFlowRadioButton(
                                                                                    options: [
                                                                                      'Iconografía',
                                                                                      'Fotografía'
                                                                                    ].toList(),
                                                                                    onChanged: (value) {
                                                                                      setState(() => imagenTipoValue1 = value);
                                                                                    },
                                                                                    optionHeight: 32,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: Colors.black,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                                                                                    buttonPosition: RadioButtonPosition.left,
                                                                                    direction: Axis.horizontal,
                                                                                    radioButtonColor: FlutterFlowTheme.of(context).secondaryColor,
                                                                                    inactiveRadioButtonColor: Color(0x8A000000),
                                                                                    toggleable: false,
                                                                                    horizontalAlignment: WrapAlignment.start,
                                                                                    verticalAlignment: WrapCrossAlignment.start,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              if ((imagenTipoValue1) == 'Iconografía')
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    final selectedMedia = await selectMedia(
                                                                                      imageQuality: 100,
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      final downloadUrls = (await Future.wait(selectedMedia.map((m) async => await uploadData(m.storagePath, m.bytes)))).where((u) => u != null).toList();
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      if (downloadUrls != null && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() => uploadedFileUrl2 = downloadUrls.first);
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Success!',
                                                                                        );
                                                                                      } else {
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Failed to upload media',
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 140,
                                                                                    height: 140,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/Agregar_Iconografia.png',
                                                                                        ).image,
                                                                                      ),
                                                                                    ),
                                                                                    child: Visibility(
                                                                                      visible: functions.previewSubida(uploadedFileUrl2) ?? true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: CachedNetworkImage(
                                                                                          imageUrl: valueOrDefault<String>(
                                                                                            uploadedFileUrl2,
                                                                                            'gs://mi-trasplante.appspot.com/users/haaINw1HpShxib9MTqCsm5kuYqB2/uploads/Agregar Iconografía.png',
                                                                                          ),
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if ((imagenTipoValue1) == 'Fotografía')
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    final selectedMedia = await selectMedia(
                                                                                      imageQuality: 100,
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      final downloadUrls = (await Future.wait(selectedMedia.map((m) async => await uploadData(m.storagePath, m.bytes)))).where((u) => u != null).toList();
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      if (downloadUrls != null && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() => uploadedFileUrl3 = downloadUrls.first);
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Success!',
                                                                                        );
                                                                                      } else {
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Failed to upload media',
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 325,
                                                                                    height: 233.33,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/Agregar_fotografia.png',
                                                                                        ).image,
                                                                                      ),
                                                                                    ),
                                                                                    child: Visibility(
                                                                                      visible: functions.previewSubida(uploadedFileUrl3) ?? true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: CachedNetworkImage(
                                                                                          imageUrl: valueOrDefault<String>(
                                                                                            uploadedFileUrl3,
                                                                                            'gs://mi-trasplante.appspot.com/users/haaINw1HpShxib9MTqCsm5kuYqB2/uploads/Agregar fotografía.png',
                                                                                          ),
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              16,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Frase clave',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: claveMicro1Controller,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: Colors.white,
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    maxLines: 2,
                                                                                    keyboardType: TextInputType.name,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              16,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Información adicional',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: infoMicro1Controller,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: Colors.white,
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    maxLines: 5,
                                                                                    keyboardType: TextInputType.name,
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
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            16),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24,
                                                                            24,
                                                                            24,
                                                                            24),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              'Segundo micro-contenido',
                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                    fontFamily: 'Proxima nova',
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Imagen',
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: FlutterFlowRadioButton(
                                                                                    options: [
                                                                                      'Iconografía',
                                                                                      'Fotografía'
                                                                                    ].toList(),
                                                                                    onChanged: (value) {
                                                                                      setState(() => imagenTipoValue2 = value);
                                                                                    },
                                                                                    optionHeight: 32,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: Colors.black,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                                                                                    buttonPosition: RadioButtonPosition.left,
                                                                                    direction: Axis.horizontal,
                                                                                    radioButtonColor: FlutterFlowTheme.of(context).secondaryColor,
                                                                                    inactiveRadioButtonColor: Color(0x8A000000),
                                                                                    toggleable: false,
                                                                                    horizontalAlignment: WrapAlignment.start,
                                                                                    verticalAlignment: WrapCrossAlignment.start,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              if ((imagenTipoValue2) == 'Iconografía')
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    final selectedMedia = await selectMedia(
                                                                                      imageQuality: 100,
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      final downloadUrls = (await Future.wait(selectedMedia.map((m) async => await uploadData(m.storagePath, m.bytes)))).where((u) => u != null).toList();
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      if (downloadUrls != null && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() => uploadedFileUrl4 = downloadUrls.first);
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Success!',
                                                                                        );
                                                                                      } else {
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Failed to upload media',
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 140,
                                                                                    height: 140,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/Agregar_Iconografia.png',
                                                                                        ).image,
                                                                                      ),
                                                                                    ),
                                                                                    child: Visibility(
                                                                                      visible: functions.previewSubida(uploadedFileUrl4) ?? true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: CachedNetworkImage(
                                                                                          imageUrl: valueOrDefault<String>(
                                                                                            uploadedFileUrl4,
                                                                                            'gs://mi-trasplante.appspot.com/users/haaINw1HpShxib9MTqCsm5kuYqB2/uploads/Agregar Iconografía.png',
                                                                                          ),
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if ((imagenTipoValue2) == 'Fotografía')
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    final selectedMedia = await selectMedia(
                                                                                      imageQuality: 100,
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      final downloadUrls = (await Future.wait(selectedMedia.map((m) async => await uploadData(m.storagePath, m.bytes)))).where((u) => u != null).toList();
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      if (downloadUrls != null && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() => uploadedFileUrl5 = downloadUrls.first);
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Success!',
                                                                                        );
                                                                                      } else {
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Failed to upload media',
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 325,
                                                                                    height: 233.33,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/Agregar_fotografia.png',
                                                                                        ).image,
                                                                                      ),
                                                                                    ),
                                                                                    child: Visibility(
                                                                                      visible: functions.previewSubida(uploadedFileUrl5) ?? true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: CachedNetworkImage(
                                                                                          imageUrl: valueOrDefault<String>(
                                                                                            uploadedFileUrl5,
                                                                                            'gs://mi-trasplante.appspot.com/users/haaINw1HpShxib9MTqCsm5kuYqB2/uploads/Agregar fotografía.png',
                                                                                          ),
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              16,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Frase clave',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: claveMicro2Controller,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: Colors.white,
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    maxLines: 2,
                                                                                    keyboardType: TextInputType.name,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              16,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Información adicional',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: infoMicro2Controller,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: Colors.white,
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    maxLines: 5,
                                                                                    keyboardType: TextInputType.name,
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
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            16),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24,
                                                                            24,
                                                                            24,
                                                                            24),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              'Tercer micro-contenido',
                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                    fontFamily: 'Proxima nova',
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Imagen',
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: FlutterFlowRadioButton(
                                                                                    options: [
                                                                                      'Iconografía',
                                                                                      'Fotografía'
                                                                                    ].toList(),
                                                                                    onChanged: (value) {
                                                                                      setState(() => imagenTipoValue3 = value);
                                                                                    },
                                                                                    optionHeight: 32,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: Colors.black,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                                                                                    buttonPosition: RadioButtonPosition.left,
                                                                                    direction: Axis.horizontal,
                                                                                    radioButtonColor: FlutterFlowTheme.of(context).secondaryColor,
                                                                                    inactiveRadioButtonColor: Color(0x8A000000),
                                                                                    toggleable: false,
                                                                                    horizontalAlignment: WrapAlignment.start,
                                                                                    verticalAlignment: WrapCrossAlignment.start,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              if ((imagenTipoValue3) == 'Iconografía')
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    final selectedMedia = await selectMedia(
                                                                                      imageQuality: 100,
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      final downloadUrls = (await Future.wait(selectedMedia.map((m) async => await uploadData(m.storagePath, m.bytes)))).where((u) => u != null).toList();
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      if (downloadUrls != null && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() => uploadedFileUrl6 = downloadUrls.first);
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Success!',
                                                                                        );
                                                                                      } else {
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Failed to upload media',
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 140,
                                                                                    height: 140,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/Agregar_Iconografia.png',
                                                                                        ).image,
                                                                                      ),
                                                                                    ),
                                                                                    child: Visibility(
                                                                                      visible: functions.previewSubida(uploadedFileUrl6) ?? true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: CachedNetworkImage(
                                                                                          imageUrl: valueOrDefault<String>(
                                                                                            uploadedFileUrl6,
                                                                                            'gs://mi-trasplante.appspot.com/users/haaINw1HpShxib9MTqCsm5kuYqB2/uploads/Agregar Iconografía.png',
                                                                                          ),
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if ((imagenTipoValue3) == 'Fotografía')
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    final selectedMedia = await selectMedia(
                                                                                      imageQuality: 100,
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      final downloadUrls = (await Future.wait(selectedMedia.map((m) async => await uploadData(m.storagePath, m.bytes)))).where((u) => u != null).toList();
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      if (downloadUrls != null && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() => uploadedFileUrl7 = downloadUrls.first);
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Success!',
                                                                                        );
                                                                                      } else {
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Failed to upload media',
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 325,
                                                                                    height: 233.33,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/Agregar_fotografia.png',
                                                                                        ).image,
                                                                                      ),
                                                                                    ),
                                                                                    child: Visibility(
                                                                                      visible: functions.previewSubida(uploadedFileUrl7) ?? true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: CachedNetworkImage(
                                                                                          imageUrl: valueOrDefault<String>(
                                                                                            uploadedFileUrl7,
                                                                                            'gs://mi-trasplante.appspot.com/users/haaINw1HpShxib9MTqCsm5kuYqB2/uploads/Agregar fotografía.png',
                                                                                          ),
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              16,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Frase clave',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: claveMicro3Controller,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: Colors.white,
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    maxLines: 2,
                                                                                    keyboardType: TextInputType.name,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              16,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Información adicional',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: infoMicro3Controller,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: Colors.white,
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    maxLines: 5,
                                                                                    keyboardType: TextInputType.name,
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
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            16),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24,
                                                                            24,
                                                                            24,
                                                                            24),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              'Cuarto micro-contenido',
                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                    fontFamily: 'Proxima nova',
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Imagen',
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: FlutterFlowRadioButton(
                                                                                    options: [
                                                                                      'Iconografía',
                                                                                      'Fotografía'
                                                                                    ].toList(),
                                                                                    onChanged: (value) {
                                                                                      setState(() => imagenTipoValue4 = value);
                                                                                    },
                                                                                    optionHeight: 32,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: Colors.black,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                                                                                    buttonPosition: RadioButtonPosition.left,
                                                                                    direction: Axis.horizontal,
                                                                                    radioButtonColor: FlutterFlowTheme.of(context).secondaryColor,
                                                                                    inactiveRadioButtonColor: Color(0x8A000000),
                                                                                    toggleable: false,
                                                                                    horizontalAlignment: WrapAlignment.start,
                                                                                    verticalAlignment: WrapCrossAlignment.start,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              if ((imagenTipoValue4) == 'Iconografía')
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    final selectedMedia = await selectMedia(
                                                                                      imageQuality: 100,
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      final downloadUrls = (await Future.wait(selectedMedia.map((m) async => await uploadData(m.storagePath, m.bytes)))).where((u) => u != null).toList();
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      if (downloadUrls != null && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() => uploadedFileUrl8 = downloadUrls.first);
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Success!',
                                                                                        );
                                                                                      } else {
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Failed to upload media',
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 140,
                                                                                    height: 140,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/Agregar_Iconografia.png',
                                                                                        ).image,
                                                                                      ),
                                                                                    ),
                                                                                    child: Visibility(
                                                                                      visible: functions.previewSubida(uploadedFileUrl8) ?? true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: CachedNetworkImage(
                                                                                          imageUrl: valueOrDefault<String>(
                                                                                            uploadedFileUrl8,
                                                                                            'gs://mi-trasplante.appspot.com/users/haaINw1HpShxib9MTqCsm5kuYqB2/uploads/Agregar Iconografía.png',
                                                                                          ),
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if ((imagenTipoValue4) == 'Fotografía')
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    final selectedMedia = await selectMedia(
                                                                                      imageQuality: 100,
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      final downloadUrls = (await Future.wait(selectedMedia.map((m) async => await uploadData(m.storagePath, m.bytes)))).where((u) => u != null).toList();
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      if (downloadUrls != null && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() => uploadedFileUrl9 = downloadUrls.first);
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Success!',
                                                                                        );
                                                                                      } else {
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Failed to upload media',
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 325,
                                                                                    height: 233.33,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/Agregar_fotografia.png',
                                                                                        ).image,
                                                                                      ),
                                                                                    ),
                                                                                    child: Visibility(
                                                                                      visible: functions.previewSubida(uploadedFileUrl9) ?? true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: CachedNetworkImage(
                                                                                          imageUrl: valueOrDefault<String>(
                                                                                            uploadedFileUrl9,
                                                                                            'gs://mi-trasplante.appspot.com/users/haaINw1HpShxib9MTqCsm5kuYqB2/uploads/Agregar fotografía.png',
                                                                                          ),
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              16,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Frase clave',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: claveMicro4Controller,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: Colors.white,
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    maxLines: 2,
                                                                                    keyboardType: TextInputType.name,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              16,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Información adicional',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: infoMicro4Controller,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: Colors.white,
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    maxLines: 5,
                                                                                    keyboardType: TextInputType.name,
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
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            40),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24,
                                                                            24,
                                                                            24,
                                                                            24),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              'Quinto micro-contenido',
                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                    fontFamily: 'Proxima nova',
                                                                                    fontWeight: FontWeight.normal,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Imagen',
                                                                                    style: FlutterFlowTheme.of(context).subtitle1,
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: FlutterFlowRadioButton(
                                                                                    options: [
                                                                                      'Iconografía',
                                                                                      'Fotografía'
                                                                                    ].toList(),
                                                                                    onChanged: (value) {
                                                                                      setState(() => imagenTipoValue5 = value);
                                                                                    },
                                                                                    optionHeight: 32,
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: Colors.black,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                                                                                    buttonPosition: RadioButtonPosition.left,
                                                                                    direction: Axis.horizontal,
                                                                                    radioButtonColor: FlutterFlowTheme.of(context).secondaryColor,
                                                                                    inactiveRadioButtonColor: Color(0x8A000000),
                                                                                    toggleable: false,
                                                                                    horizontalAlignment: WrapAlignment.start,
                                                                                    verticalAlignment: WrapCrossAlignment.start,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              if ((imagenTipoValue5) == 'Iconografía')
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    final selectedMedia = await selectMedia(
                                                                                      imageQuality: 100,
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      final downloadUrls = (await Future.wait(selectedMedia.map((m) async => await uploadData(m.storagePath, m.bytes)))).where((u) => u != null).toList();
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      if (downloadUrls != null && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() => uploadedFileUrl10 = downloadUrls.first);
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Success!',
                                                                                        );
                                                                                      } else {
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Failed to upload media',
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 140,
                                                                                    height: 140,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/Agregar_Iconografia.png',
                                                                                        ).image,
                                                                                      ),
                                                                                    ),
                                                                                    child: Visibility(
                                                                                      visible: functions.previewSubida(uploadedFileUrl10) ?? true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: CachedNetworkImage(
                                                                                          imageUrl: valueOrDefault<String>(
                                                                                            uploadedFileUrl10,
                                                                                            'gs://mi-trasplante.appspot.com/users/haaINw1HpShxib9MTqCsm5kuYqB2/uploads/Agregar Iconografía.png',
                                                                                          ),
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if ((imagenTipoValue5) == 'Fotografía')
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    final selectedMedia = await selectMedia(
                                                                                      imageQuality: 100,
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      final downloadUrls = (await Future.wait(selectedMedia.map((m) async => await uploadData(m.storagePath, m.bytes)))).where((u) => u != null).toList();
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      if (downloadUrls != null && downloadUrls.length == selectedMedia.length) {
                                                                                        setState(() => uploadedFileUrl11 = downloadUrls.first);
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Success!',
                                                                                        );
                                                                                      } else {
                                                                                        showUploadMessage(
                                                                                          context,
                                                                                          'Failed to upload media',
                                                                                        );
                                                                                        return;
                                                                                      }
                                                                                    }
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 325,
                                                                                    height: 233.33,
                                                                                    decoration: BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: Image.asset(
                                                                                          'assets/images/Agregar_fotografia.png',
                                                                                        ).image,
                                                                                      ),
                                                                                    ),
                                                                                    child: Visibility(
                                                                                      visible: functions.previewSubida(uploadedFileUrl11) ?? true,
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: CachedNetworkImage(
                                                                                          imageUrl: valueOrDefault<String>(
                                                                                            uploadedFileUrl11,
                                                                                            'gs://mi-trasplante.appspot.com/users/haaINw1HpShxib9MTqCsm5kuYqB2/uploads/Agregar fotografía.png',
                                                                                          ),
                                                                                          width: 100,
                                                                                          height: 100,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              16,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Frase clave',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: claveMicro5Controller,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: Colors.white,
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    maxLines: 2,
                                                                                    keyboardType: TextInputType.name,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              16,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Información adicional',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          fontWeight: FontWeight.w600,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: TextFormField(
                                                                                    controller: infoMicro5Controller,
                                                                                    obscureText: false,
                                                                                    decoration: InputDecoration(
                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Proxima nova',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                      enabledBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      focusedBorder: OutlineInputBorder(
                                                                                        borderSide: BorderSide(
                                                                                          color: Color(0xFFC9C9C9),
                                                                                          width: 0,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(12),
                                                                                      ),
                                                                                      filled: true,
                                                                                      fillColor: Colors.white,
                                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Proxima nova',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.normal,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                    maxLines: 5,
                                                                                    keyboardType: TextInputType.name,
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
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
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
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              Navigator.pop(context);
                                            },
                                            text: 'Cancelar',
                                            options: FFButtonOptions(
                                              width: 200,
                                              height: 50,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Proxima nova',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryColor,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    useGoogleFonts: false,
                                                  ),
                                              elevation: 0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                width: 1,
                                              ),
                                              borderRadius: 12,
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              if (FFAppState()
                                                  .otraCategoriaContenidos) {
                                                final categoriasUpdateData = {
                                                  'listado':
                                                      FieldValue.arrayUnion([
                                                    nuevaCategoriaContenidosController
                                                        .text
                                                  ]),
                                                };
                                                await nuevoContenidoCategoriasRecord
                                                    .reference
                                                    .update(
                                                        categoriasUpdateData);

                                                final contenidosCreateData = {
                                                  ...createContenidosRecordData(
                                                    nombre: nameController.text,
                                                    previewImage:
                                                        uploadedFileUrl1,
                                                    categoriaPrincipal:
                                                        nuevaCategoriaContenidosController
                                                            .text,
                                                    imgMicro1: functions
                                                        .seleccionImagenMicro(
                                                            uploadedFileUrl2,
                                                            uploadedFileUrl3),
                                                    tipoImgMicro1:
                                                        imagenTipoValue1,
                                                    nombreMicro1:
                                                        claveMicro1Controller
                                                            .text,
                                                    infoMicro1:
                                                        infoMicro1Controller
                                                            .text,
                                                    imgMicro2: functions
                                                        .seleccionImagenMicro(
                                                            uploadedFileUrl4,
                                                            uploadedFileUrl5),
                                                    tipoImgMicro2:
                                                        imagenTipoValue2,
                                                    nombreMicro2:
                                                        claveMicro2Controller
                                                            .text,
                                                    infoMicro2:
                                                        infoMicro2Controller
                                                            .text,
                                                    imgMicro3: functions
                                                        .seleccionImagenMicro(
                                                            uploadedFileUrl6,
                                                            uploadedFileUrl7),
                                                    tipoImgMicro3:
                                                        imagenTipoValue3,
                                                    nombreMicro3:
                                                        claveMicro3Controller
                                                            .text,
                                                    infoMicro3:
                                                        infoMicro3Controller
                                                            .text,
                                                    imgMicro4: functions
                                                        .seleccionImagenMicro(
                                                            uploadedFileUrl8,
                                                            uploadedFileUrl9),
                                                    tipoImgMicro4:
                                                        imagenTipoValue4,
                                                    nombreMicro4:
                                                        claveMicro4Controller
                                                            .text,
                                                    infoMicro4:
                                                        infoMicro4Controller
                                                            .text,
                                                    imgMicro5: functions
                                                        .seleccionImagenMicro(
                                                            uploadedFileUrl10,
                                                            uploadedFileUrl11),
                                                    tipoImgMicro5:
                                                        imagenTipoValue5,
                                                    nombreMicro5:
                                                        claveMicro5Controller
                                                            .text,
                                                    infoMicro5:
                                                        infoMicro5Controller
                                                            .text,
                                                  ),
                                                  'categorias_secundarias':
                                                      categoriasSecundariasValues,
                                                  'etapas_relevantes':
                                                      etapasValues,
                                                };
                                                await ContenidosRecord
                                                    .collection
                                                    .doc()
                                                    .set(contenidosCreateData);
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding:
                                                          MediaQuery.of(context)
                                                              .viewInsets,
                                                      child:
                                                          ContenidoCreadoWidget(
                                                        preview:
                                                            uploadedFileUrl1,
                                                        nombre:
                                                            nameController.text,
                                                        categoriaPrincipal:
                                                            nuevaCategoriaContenidosController
                                                                .text,
                                                      ),
                                                    );
                                                  },
                                                );
                                              } else {
                                                final contenidosCreateData = {
                                                  ...createContenidosRecordData(
                                                    nombre: nameController.text,
                                                    previewImage:
                                                        uploadedFileUrl1,
                                                    categoriaPrincipal:
                                                        categoriasContenidosValue,
                                                    imgMicro1: functions
                                                        .seleccionImagenMicro(
                                                            uploadedFileUrl2,
                                                            uploadedFileUrl3),
                                                    tipoImgMicro1:
                                                        imagenTipoValue1,
                                                    nombreMicro1:
                                                        claveMicro1Controller
                                                            .text,
                                                    infoMicro1:
                                                        infoMicro1Controller
                                                            .text,
                                                    imgMicro2: functions
                                                        .seleccionImagenMicro(
                                                            uploadedFileUrl4,
                                                            uploadedFileUrl5),
                                                    tipoImgMicro2:
                                                        imagenTipoValue2,
                                                    nombreMicro2:
                                                        claveMicro2Controller
                                                            .text,
                                                    infoMicro2:
                                                        infoMicro2Controller
                                                            .text,
                                                    imgMicro3: functions
                                                        .seleccionImagenMicro(
                                                            uploadedFileUrl6,
                                                            uploadedFileUrl7),
                                                    tipoImgMicro3:
                                                        imagenTipoValue3,
                                                    nombreMicro3:
                                                        claveMicro3Controller
                                                            .text,
                                                    infoMicro3:
                                                        infoMicro3Controller
                                                            .text,
                                                    imgMicro4: functions
                                                        .seleccionImagenMicro(
                                                            uploadedFileUrl8,
                                                            uploadedFileUrl9),
                                                    tipoImgMicro4:
                                                        imagenTipoValue4,
                                                    nombreMicro4:
                                                        claveMicro4Controller
                                                            .text,
                                                    infoMicro4:
                                                        infoMicro4Controller
                                                            .text,
                                                    imgMicro5: functions
                                                        .seleccionImagenMicro(
                                                            uploadedFileUrl10,
                                                            uploadedFileUrl11),
                                                    tipoImgMicro5:
                                                        imagenTipoValue5,
                                                    nombreMicro5:
                                                        claveMicro5Controller
                                                            .text,
                                                    infoMicro5:
                                                        infoMicro5Controller
                                                            .text,
                                                  ),
                                                  'categorias_secundarias':
                                                      categoriasSecundariasValues,
                                                  'etapas_relevantes':
                                                      etapasValues,
                                                };
                                                await ContenidosRecord
                                                    .collection
                                                    .doc()
                                                    .set(contenidosCreateData);
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding:
                                                          MediaQuery.of(context)
                                                              .viewInsets,
                                                      child:
                                                          ContenidoCreadoWidget(
                                                        preview:
                                                            uploadedFileUrl1,
                                                        nombre:
                                                            nameController.text,
                                                        categoriaPrincipal:
                                                            categoriasContenidosValue,
                                                      ),
                                                    );
                                                  },
                                                );
                                              }

                                              setState(() => FFAppState()
                                                      .otraCategoriaContenidos =
                                                  false);
                                            },
                                            text: 'Crear contenido',
                                            options: FFButtonOptions(
                                              width: 200,
                                              height: 50,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Proxima nova',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiaryColor,
                                                    fontWeight:
                                                        FontWeight.normal,
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
                        );
                      },
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
