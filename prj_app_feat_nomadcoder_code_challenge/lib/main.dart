import 'package:flutter/material.dart';
import 'package:prj_app_feat_nomadcoder_class/service/Service.dart';
import 'package:prj_app_feat_nomadcoder_class/wiget/%60.dart';

import 'wiget/commons.dart';

void main() {
  // ApiService().getTodaysToons();//DEVELOPMENT // //니콜라스의 webtoonAPI 결과를 http 로 호출


  // ApiService().getTodaysToons();//DEVELOPMENT




  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int Counter = 0;
  List<int> inputs = [];
  bool show_decision = true;
  late MyTool myTool ;
  dynamic foo;

  void onClicked() {
    setState(() {
      Counter = Counter + 1;
      inputs.add(Counter);
    });
  }

  @override
  void initState() {
    print('_______________________________________________________________________ initState() s');
    // TODO: implement initState
    super.initState();
    foo = 0;
    myTool = MyTool();
  }

  @override
  void dispose() {
    print('_______________________________________________________________________ dispose() s');
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('_______________________________________________________________________ built() s');
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pinkAccent.shade200,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Color(0xFF232b55),
            fontSize: 18,
          ),
        ),
        cardColor: const Color(0xfff4eddb),
      ),
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              '오늘\'s 웹툰s',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          elevation: 1,
        ),
        body: Center(
          child: Container(
              child: CustomScreenHome(),
              ),
        ),
      ),
    );
  }
}
