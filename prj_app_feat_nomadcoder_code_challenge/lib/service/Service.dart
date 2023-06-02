import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:prj_app_feat_nomadcoder_class/wiget/commons.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  // 니콜라스 API 를 http 를 통하여 호출
  void getTodaysToons() async {
    final Uri url = Uri.parse('$baseUrl/$today');
    final Response response =
        await http.get(url); // 동기처리로 url로 요청을 보내고 결과를 받아온다.
    if (response.statusCode == 200) {
      // var DummyApiBodyDatas = [ //DEVELOPMENT
      //   {
      //     "thumb": "내가 가장 많이 연습한 FRAMEWORK 는 FLUTTER",
      //     "title": "내가 가장 많이 연습한 FRAMEWORK{{DATA SEPERATOR}}FLUTTER",
      //     "id": "gt5765LI*",
      //   },
      //   {
      //     "thumb": "내가 가장 많이 연습한 FRAMEWORK 는 FLUTTER",
      //     "title": "내가 가장 많이 연습한 FLUTTER",
      //     "id": "gt5765LI*",
      //   },
      //   {
      //     "thumb": "내가 가장 많이 연습한 FRAMEWORK 는 FLUTTER",
      //     "title": "내가 가장 많이 연습한 FLUTTER",
      //     "id": "gt5765LI*",
      //   },
      // ];
      // print(DummyApiBodyDatas);//DEVELOPMENT
      // for(var DummyApiBodyData in DummyApiBodyDatas){//DEVELOPMENT
      //   print(DummyApiBodyData);//DEVELOPMENT
      // }//DEVELOPMENT




      // print(response.body);  //DEVELOPMENT // API RESPONSE TEST
      final List<dynamic> webtoons =
          jsonDecode(response.body); //decode 'body data from API' as json
      for (var webtoon in webtoons) {
      // print(webtoon); //DEVELOPMENT // JSON DECODING TEST

        ModelWebToon.fromJson(webtoon);
      }

      return;
    }
    throw Error();
  }
}
