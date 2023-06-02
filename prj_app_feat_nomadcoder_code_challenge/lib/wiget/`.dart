import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class MyTool {
  void pause() {
    exit(0); //이 코드는 앱을 종료하고 시스템으로 돌아갑니다.
    SystemNavigator.pop(); //이 코드는 앱을 백그라운드에서 종료하고 시스템으로 돌아갑니다.
  }

  MyTool() {
    // var logger = Logger();
    // var logger = Logger(printer: PrettyPrinter());
    // var loggerNoStack = Logger(printer: PrettyPrinter(methodCount: 0));
    // logger.d("Logger is working!");
    // logger.d('Log message with 2 methods');
    // loggerNoStack.i('Info message');
    // loggerNoStack.w('Just a warning!');
    // logger.e('Error! Something bad happened', 'Test Error');
    // loggerNoStack.v({'key': 5, 'value': 'something'});
    // Logger(printer: SimplePrinter(colors: true)).v('boom');
  }

  Future<void> downloadMp3File({required String path}) async {
    // Get the URL of the MP3 file.
    String url = path;
    print(url);
    print('mkr s');
    // final Uri url_ = Uri.parse(path);//Create a URI with encryption
    Uri url_ = Uri(
      // Create a URI without encryption.
      scheme: path.split("://").first,
      host: path.split("//").last.split("/").first.split(":").first,
      port: int.parse(path.split("//").last.split("/").first.split(":").last),
      path: 'test.mp3',
      query: '',
    );
    print(url_.toString());
    print('mkr e');

    // // Download the MP3 file.
    Response response = await get(url_);

    // pause();//DEVELOPMENT

    // Save the MP3 file to the device's storage.
    // File file = File('song.mp3');
    // await file.writeAsBytes(response.bodyBytes);
  }

  Future<void> speak({required String text}) async {
    AudioPlayer player = AudioPlayer(); // Create an AudioPlayer instance.

    // Download the MP3 file.
    await player.play('http://172.30.1.31:9090/' + text + '.wav');

    // Listen for the player's state changes.
    player.onPlayerStateChanged.listen(
      (state) {
        print(state);
        print(player.state);
      },
    );

// // 오디오 재생을 중지합니다.
//     player.stop();
//
// // 오디오 재생을 일시 중지합니다.
//     player.pause();
//
// // 일시 중지된 오디오 재생을 재개합니다.
//     player.resume();
//
// // 오디오 재생의 재생 위치를 이동합니다.
//     player.seek(1000);
  }

  void process_properly({required String somthing}) {
    if (somthing.split(".").last == 'mp3') {
      AudioPlayer player = AudioPlayer();
      player.setVolume(1.0);
      player.play(somthing);
      // print(player.getDuration()); //재생 시간
      // print(player.getCurrentPosition()); //남은 시간
    }
    if (somthing.split(".").last == 'wav') {}
    if (somthing.split(".").last == 'jpeg') {}
    if (somthing.split(".").last == 'png') {}
    if (somthing.split(".").last == 'mkv') {}
    if (somthing.split(".").last == 'mp4') {}
  }
}
