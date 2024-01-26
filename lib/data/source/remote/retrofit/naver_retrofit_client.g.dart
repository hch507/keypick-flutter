// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'naver_retrofit_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _NaverRestClient implements NaverRestClient {
  _NaverRestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://openapi.naver.com/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BlogTotal> getBlogTotal(
    String clientId,
    String clientKey,
    int display,
    String searchTerm,
    String sort,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'diplay': display,
      r'query': searchTerm,
      r'sort': sort,
    };
    final _headers = <String, dynamic>{
      r'X-Naver-Client-Id': clientId,
      r'X-Naver-Client-Secret': clientKey,
    };
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<BlogTotal>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'search/blog.json',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BlogTotal.fromJson(_result.data!);
    return value;
  }

  @override
  Future<BlogMonthRatio> getKeywordData(
    String ContentType,
    String clientId,
    String clientSecret,
    BlogMonthRatioBody request,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Content-Type': ContentType,
      r'X-Naver-Client-Id': clientId,
      r'X-Naver-Client-Secret': clientSecret,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<BlogMonthRatio>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: ContentType,
    )
            .compose(
              _dio.options,
              'datalab/search',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = BlogMonthRatio.fromJson(_result.data!);
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
