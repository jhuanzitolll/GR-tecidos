import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class MandaOinoWhatsCall {
  static Future<ApiCallResponse> call({
    String? textonumero = '',
    String? hostidwhats = '',
    String? tokenwhats = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cmd": "send",
  "type": "text",
  "number": ["${escapeStringForJson(textonumero)}"],
  "value": "Seja bem-vindo a *GR Distribuidora de Tecidos*",
  "id": "t123"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'MandaOinoWhats',
      apiUrl: 'https://$tokenwhats.apiwhatsgo.com/cgi/whatsapp/whatsgo.js',
      callType: ApiCallType.POST,
      headers: {
        'hostid': '$hostidwhats',
        'token': '$tokenwhats',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class APIConfereNumeroCall {
  static Future<ApiCallResponse> call({
    String? textonumero = '',
    String? hostidwhats = '',
    String? tokenwhats = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cmd": "validate",
  "list": [
    "${escapeStringForJson(textonumero)}"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'APIConfereNumero',
      apiUrl: 'https://$tokenwhats.apiwhatsgo.com/cgi/whatsapp/whatsgo.js',
      callType: ApiCallType.POST,
      headers: {
        'hostid': '$hostidwhats',
        'token': '$tokenwhats',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? nvalidado(dynamic response) => getJsonField(
        response,
        r'''$.validate''',
        true,
      ) as List?;
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class EncontraUsuarioCall {
  static Future<ApiCallResponse> call({
    String? usuario = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'encontraUsuario',
      apiUrl:
          'https://nlmnbivhwgsnchfcvlwo.supabase.co/rest/v1/usuarios?usuario=ilike.$usuario&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5sbW5iaXZod2dzbmNoZmN2bHdvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjgzMDQ1NzUsImV4cCI6MjA0Mzg4MDU3NX0.pYxeR3FBcDX6ZBxBBPO_Bn-8dyiWmn4R_pnpeqvBeZU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5sbW5iaXZod2dzbmNoZmN2bHdvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjgzMDQ1NzUsImV4cCI6MjA0Mzg4MDU3NX0.pYxeR3FBcDX6ZBxBBPO_Bn-8dyiWmn4R_pnpeqvBeZU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? codapi(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].codapi''',
      ));
  static String? hostid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].hostid''',
      ));
  static String? usuario(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].usuario''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
