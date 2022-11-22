
import 'dart:convert';

import 'package:http/http.dart' as http;

class Http {
  static const String _BASE_URL = 'https://www.jobseek.safeboxcore.com';

  static Future<Map<String, dynamic>> get(String path) async {
    final response = await http.get(Uri.parse('$_BASE_URL$path'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw Exception();
  }

  static Future<List> getList(String path) async {
    final response = await http.get(Uri.parse('$_BASE_URL$path'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    throw Exception();
  }

  static Future post(String path) async {
    final response = await http.post(Uri.parse('$_BASE_URL$path'));
    if (response.statusCode == 200) {
      return response.body;
    }
    throw Exception();
  }
}