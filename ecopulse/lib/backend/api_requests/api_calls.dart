import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AuthMapCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'auth Map',
      apiUrl: 'https://outpost.mappls.com/api/security/oauth/token',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'grant_type': "client_credentials",
        'client_id':
            "33OkryzDZsKQDVMV0sI34jXEMYCenIBroxPn4D4QlrMMp3JveILb8JrVXNg6FKf8mIGxUful7QXRwXBsi8z83ssnX0lfLuMx",
        'client_secret':
            "lrFxI-iSEg9Zf4jDLmy90XQ_K98DMeVkAe6WQbKqfb3Jhtt_Z4gLf6Gbx90i46xgcr8ADMgONCts_qplhX97QU6F936_j4gLSAtdoqJpp-g=",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  static String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token_type''',
      ));
}

class AddressCall {
  static Future<ApiCallResponse> call({
    String? token = '01c54f0d-2cf5-44d4-a253-8f85cebed65b',
    String? lat = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Address',
      apiUrl:
          'https://apis.mappls.com/advancedmaps/v1/4713ebc4b5f30bf603820649fbce3a53/rev_geocode?${lat}&region=IND&lang=en',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'Authorization': 'Bearer ${token}',
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

  static String? locality(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[:].locality''',
      ));
  static String? district(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[:].district''',
      ));
  static String? block(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[:].subDistrict''',
      ));
  static String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[:].city''',
      ));
  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[:].state''',
      ));
  static String? pincode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[:].pincode''',
      ));
  static String? lat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[:].lat''',
      ));
  static String? lng(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[:].lng''',
      ));
  static String? fulladdress(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.results[:].formatted_address''',
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
