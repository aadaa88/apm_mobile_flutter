import 'package:apm_mobile_flutter/model/sample_list.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

const String URL = 'http://localhost:3000';

Future<List<Sample>> fetchSample() async {
  try {
    final response = await http.get(Uri.parse(URL + '/sample'));
    if (response.statusCode == 200) {
      // 만약에 서버가 상태 코드 200을 응답해 주면 JSON을 퍼싱합니다.
      final parsed = jsonDecode(response.body);
      List<Sample> samples =
          parsed.map<Sample>((json) => Sample.fromJson(json));

      return samples;
    } else {
      throw Exception('샘플을 불러 오지 못 했습니다.');
    }
  } catch (e) {
    return <Sample>[];
  }
}

Future<Sample> fetchGetResponse() async {
  final response = await http.get(Uri.parse(URL + '/api/get/demo'));

  if (response.statusCode == 200) {
    return Sample.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('get 방식 연결이 안 되었습니다.');
  }
}

Future<Sample> fetchPostResponse() async {
  final response = await http.post(Uri.parse(URL + '/api/post/demo'));

  if (response.statusCode == 200) {
    return Sample.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('post 방식 연결이 안 되었습니다.');
  }
}
