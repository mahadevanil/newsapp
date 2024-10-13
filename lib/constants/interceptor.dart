import 'dart:async';

import 'package:chopper/chopper.dart';

class MyRequestInterceptor implements Interceptor {
  MyRequestInterceptor(this.token);

  final String token;

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain) async {
    final request = applyHeader(chain.request, 'auth_token', 'Bearer $token');
    return chain.proceed(request);
  }
}

// ignore: must_be_immutable
class MyResponseInterceptor implements Interceptor {
  MyResponseInterceptor(this.token);

  String token;

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain) async {
    final response = await chain.proceed(chain.request);
    token = response.headers['auth_token'] ?? "";
    return response;
  }
}
