import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'captacao_model.dart';
export 'captacao_model.dart';

class CaptacaoWidget extends StatefulWidget {
  const CaptacaoWidget({super.key});

  static String routeName = 'CAPTACAO';
  static String routePath = '/captacao';

  @override
  State<CaptacaoWidget> createState() => _CaptacaoWidgetState();
}

class _CaptacaoWidgetState extends State<CaptacaoWidget> {
  late CaptacaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CaptacaoModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textFieldFocusNode2!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/tecido-lona-algod-o-cru-ta-15---viivatex-5c3crhdldj.webp',
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'GR ',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w800,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF503D2E),
                              fontSize: 80.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w800,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Text(
                        'Tecidos',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w800,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF503D2E),
                              fontSize: 40.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w800,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ],
                  ),
                ),
                FutureBuilder<List<UsuariosRow>>(
                  future: UsuariosTable().queryRows(
                    queryFn: (q) => q.order('usuario'),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<UsuariosRow> dropDownUsuariosRowList = snapshot.data!;

                    return FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: [
                        'VENDAS',
                        'VENDEDOR 02',
                        'VENDEDOR 03',
                        'VENDEDOR 04'
                      ],
                      onChanged: (val) async {
                        safeSetState(() => _model.dropDownValue = val);
                        _model.apiResultpsx = await EncontraUsuarioCall.call(
                          usuario: _model.dropDownValue,
                        );

                        if ((_model.apiResultpsx?.succeeded ?? true)) {
                          FFAppState().hostidWhats = EncontraUsuarioCall.hostid(
                            (_model.apiResultpsx?.jsonBody ?? ''),
                          )!;
                          FFAppState().tokenWhats = EncontraUsuarioCall.codapi(
                            (_model.apiResultpsx?.jsonBody ?? ''),
                          )!;
                          safeSetState(() {});
                        }

                        safeSetState(() {});
                      },
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: 60.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                font: GoogleFonts.plusJakartaSans(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                      hintText: 'Select...',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: Colors.transparent,
                      borderWidth: 0.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                    );
                  },
                ),
                Text(
                  'Digite suas informações para que um vendedor entre em contato ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFF55361E),
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  child: TextFormField(
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Seu Nome',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelLarge.override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.plusJakartaSans(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.7,
                  child: TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Whatsapp',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelLarge.override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.plusJakartaSans(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                    keyboardType: TextInputType.number,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    var _shouldSetState = false;
                    _model.statusZERO = _model.textController2.text.length;
                    safeSetState(() {});
                    if (_model.statusZERO == 11) {
                      FFAppState().numeroCompleto = _model.textController2.text;
                      safeSetState(() {});
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Quantidade de caracteres invalida. Utilize a formatação (00) 0 0000 0000',
                            style: TextStyle(
                              color: Color(0xFFAF0608),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor: Color(0xFFCFEFEB),
                        ),
                      );
                      if (_shouldSetState) safeSetState(() {});
                      return;
                    }

                    _model.numeroConferido = await APIConfereNumeroCall.call(
                      textonumero: _model.textController2.text,
                      hostidwhats: FFAppState().hostidWhats,
                      tokenwhats: FFAppState().tokenWhats,
                    );

                    _shouldSetState = true;
                    if ('${APIConfereNumeroCall.status(
                          (_model.numeroConferido?.jsonBody ?? ''),
                        ).toString()}' ==
                        '0') {
                      safeSetState(() {
                        _model.textController2?.text = ((String var1) {
                          return '55' + var1;
                        }(_model.textController2.text));
                      });
                      safeSetState(() {
                        _model.textController2?.text =
                            APIConfereNumeroCall.nvalidado(
                          (_model.numeroConferido?.jsonBody ?? ''),
                        )!
                                .firstOrNull!
                                .toString();
                      });
                      safeSetState(() {
                        _model.textController2?.text = functions
                            .newNumeroconferido(APIConfereNumeroCall.nvalidado(
                          (_model.numeroConferido?.jsonBody ?? ''),
                        )?.firstOrNull?.toString())!;
                      });
                    } else {
                      safeSetState(() {
                        _model.textController2?.text = ((String var1) {
                          return '55' + var1;
                        }(_model.textController2.text));
                      });
                    }

                    FFAppState().numeroParaConferir =
                        _model.textController2.text.substring(
                      2,
                    );
                    safeSetState(() {});
                    _model.retornoNomejaExiste =
                        await ClientesTable().queryRows(
                      queryFn: (q) => q.eqOrNull(
                        'razao',
                        _model.textController1.text,
                      ),
                    );
                    _shouldSetState = true;
                    if ((_model.retornoNomejaExiste != null &&
                            (_model.retornoNomejaExiste)!.isNotEmpty) ==
                        false) {
                      safeSetState(() {
                        _model.textController1?.text =
                            '${_model.textController1.text}  - ${_model.textController2.text.substring(
                          5,
                        )}';
                      });
                    }
                    safeSetState(() {
                      _model.textController1?.text =
                          (_model.textController1.text.toUpperCase());
                    });
                    _model.retornoConfereFoneCLi =
                        await ClientesTable().queryRows(
                      queryFn: (q) => q.eqOrNull(
                        'fone',
                        FFAppState().numeroParaConferir,
                      ),
                    );
                    _shouldSetState = true;
                    if (_model.retornoConfereFoneCLi!.length > 0) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Cliente ja Existe na base de dados !',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          duration: Duration(milliseconds: 2600),
                          backgroundColor: Color(0xFFF0383C),
                        ),
                      );

                      safeSetState(() {});
                    } else {
                      _model.apiMandaOi = await MandaOinoWhatsCall.call(
                        textonumero: _model.textController2.text,
                        hostidwhats: FFAppState().hostidWhats,
                        tokenwhats: FFAppState().tokenWhats,
                      );

                      _shouldSetState = true;
                      if ((_model.apiMandaOi?.succeeded ?? true)) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Saudação enviada.',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 1500),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Saudação NÃO enviada.',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 1500),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      }

                      _model.addCliRetorno = await ClientesTable().insert({
                        'razao': _model.textController1.text,
                        'nome': _model.textController1.text.toUpperCase(),
                        'fone': FFAppState().numeroCompleto,
                        'area': _model.dropDownValue,
                        'limiti': '1',
                      });
                      _shouldSetState = true;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            valueOrDefault<String>(
                              '${valueOrDefault<String>(
                                _model.addCliRetorno?.nome,
                                'Cliente Adicionado com  sucesso',
                              )} Adicionado com sucesso.',
                              ' Adicionado com sucesso.',
                            ),
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 1900),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    }

                    safeSetState(() {
                      _model.dropDownValueController?.reset();
                    });
                    safeSetState(() {
                      _model.textController2?.clear();
                      _model.textController1?.clear();
                    });
                    if (_shouldSetState) safeSetState(() {});
                  },
                  text: 'Enviar',
                  options: FFButtonOptions(
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFFD9441),
                    textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              font: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w800,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontStyle,
                              ),
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w800,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ].divide(SizedBox(height: 16.0)).around(SizedBox(height: 16.0)),
            ),
          ],
        ),
      ),
    );
  }
}
