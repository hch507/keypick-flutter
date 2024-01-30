// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rel_keyword_retrofit_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RelKeywordRestClient implements RelKeywordRestClient {
  _RelKeywordRestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.searchad.naver.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<RelKeyword> getBlogTotal(
    String content_type,
    String x_timestamp,
    String api_key,
    String x_customer,
    String x_signature,
    String hintKeywords,
    int showDetail,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'hintKeywords': hintKeywords,
      r'showDetail': showDetail,
    };
    final _headers = <String, dynamic>{
      r'Content-Type': content_type,
      r'X-Timestamp': x_timestamp,
      r'X-API-KEY': api_key,
      r'X-Customer': x_customer,
      r'X-Signature': x_signature,
    };
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RelKeyword>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: content_type,
    )
            .compose(
              _dio.options,
              'keywordstool',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = RelKeyword.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
