import 'package:flutter/material.dart';

import 'wiget/screen_home.dart';

void main() {
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
  dynamic foo;

  void onClicked() {
    setState(() {
      Counter = Counter + 1;
      inputs.add(Counter);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(
        '____________________________________________________________________________________________________________ flutter app s');
    print('initState() worked');
    foo = 0;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose() worked');
    print('event 리스너에 event 를 등록해야 하는 걸까? 왜 작동하지 않지?');
  }

  @override
  Widget build(BuildContext context) {
    print('built() worked');
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.pinkAccent.shade200,
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Color(0xFF232b55),
              fontSize: 18,
            ),
          ),
          cardColor: const Color(0xfff4eddb)),
      debugShowCheckedModeBanner: true,
      home: ScreenHome(),
    );
  }
}
