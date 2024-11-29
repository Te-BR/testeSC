import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendEmailCall {
  static Future<ApiCallResponse> call({
    String? messageContent = '',
  }) async {
    final ffApiRequestBody = '''
{
  "From": "gabriel.toledo@doubleit.com.br",
  "To": "gabriel.toledo@doubleit.com.br",
  "Subject": "Test",
  "Tag": "Invitation",
  "HtmlBody": "${escapeStringForJson(messageContent)}",
  "TextBody": "${escapeStringForJson(messageContent)}",
  "ReplyTo": "gabriel.toledo@doubleit.com.br",
  "Metadata": {
    "Color": "blue",
    "Client-Id": "12345"
  },
  "Headers": [
    {
      "Name": "CUSTOM-HEADER",
      "Value": "value"
    }
  ],
  "TrackOpens": true,
  "TrackLinks": "HtmlOnly",
  "MessageStream": "outbound"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendEmail',
      apiUrl: 'https://api.postmarkapp.com/email',
      callType: ApiCallType.POST,
      headers: {
        'X-Postmark-Server-Token': '489fa55b-d91a-4960-bac6-1d844ef0ed01',
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
}

class SendFirebaseEmailCall {
  static Future<ApiCallResponse> call({
    String? authorization = '',
    String? reportDetails = '',
    String? reportCode = '',
    String? sendTo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "to": "$sendTo",
  "subject": "Denúncia $reportCode",
  "html": "$reportDetails"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendFirebaseEmail',
      apiUrl: 'https://send-email-vw7d33slaa-uc.a.run.app',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authorization',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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
  if (item is DocumentReference) {
    return item.path;
  }
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
