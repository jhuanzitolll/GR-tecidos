import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'captacao_widget.dart' show CaptacaoWidget;
import 'package:flutter/material.dart';

class CaptacaoModel extends FlutterFlowModel<CaptacaoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (encontraUsuario)] action in DropDown widget.
  ApiCallResponse? apiResultpsx;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (APIConfereNumero)] action in Button widget.
  ApiCallResponse? numeroConferido;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ClientesRow>? retornoConfereFoneCLi;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ClientesRow? addCliRetorno;
  // Stores action output result for [Backend Call - API (MandaOinoWhats)] action in Button widget.
  ApiCallResponse? apiResultu20;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
