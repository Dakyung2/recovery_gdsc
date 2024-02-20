
/*
import 'dart:convert';
import 'package:dio/dio.dart';
 
class AuthRepository {
  final String baseUrl;
  final Dio dio;
 
  AuthRepository({
    required this.baseUrl,
    required this.dio,
  });
 
  Future<LoginResponse> login({
    required String username,
    required String password,
  }) async {
        final serialized = base64Encode(utf8.encode('$username:$password'));
 
    final response = await dio.post(
      '$baseUrl/login',
      options: Options(
        headers: {
          'authorization': 'Basic $serialized',
        },
      ),
    );
 
    return LoginResponse.fromJson(response.data);
  }
}
*/