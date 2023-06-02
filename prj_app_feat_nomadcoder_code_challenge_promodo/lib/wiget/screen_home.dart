import 'dart:async';

import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int foo = 100000000;

  void Foo(Timer timer) {
    setState(() {
      print('foo is work');
    });
  }

  void onFoo() {
    timer2 = Timer.periodic(Duration(seconds: 1), Foo);
  }

  // static const defaultSeconds = 10; // DEVELOPMENT
  // static const defaultSeconds = 5; // DEVELOPMENT
  // static const defaultSeconds = 2; // DEVELOPMENT
  // static const defaultSeconds = 1; // DEVELOPMENT
  static const defaultSeconds = 1500; // OPERATION
  // static const defaultSeconds = 1500; // OPERATION
  // static const defaultSeconds = 3600 * 24 * 365; // OPERATION   1 year
  // static const defaultSeconds = 3600 * 24 * 30; // OPERATION   30 Days
  // static const defaultSeconds = 3600 * 24 * 7; // OPERATION   7 Days
  // static const defaultSeconds = 3600 * 24; // OPERATION   1 Day`
  // static const defaultSeconds = 3600; // OPERATION   1 hour
  // static const defaultSeconds = 1200; // OPERATION   30 MIN
  // static const defaultSeconds = 600; // OPERATION   10 MIN
  int Count = 0;
  int ScreenSeconds = defaultSeconds;
  bool isRunning = false;
  bool isPaused = false;
  int pomodoros = 0;

  late Timer timer; //Dart 의 표준 built in library 중의 하나
  late Timer timer2;

  void onTick(Timer timer) {
    setState(() {
      ScreenSeconds = ScreenSeconds - 1;
      if (ScreenSeconds == 0) {
        // timer.cancel();//OPERATION
        pomodoros = pomodoros + 1;
        isRunning = true;
        ScreenSeconds = defaultSeconds;
      }
    });
  }

  void resetStatus() {
    setState(() {
      timer.cancel();
      ScreenSeconds = defaultSeconds;
      isRunning = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // onCountPer1Second(); //DEVELOPMENT // 화면 시작시 바로시작하도록
    // isRunning = true; //DEVELOPMENT // 화면 시작시 바로시작하도록
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                '${FormattingToMinuite(ScreenSeconds)}',
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 89,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      // Container(
                      //   child: SizedBox(
                      //     width: 5,
                      //   ),
                      // ),
                    Container(
                      child: TextButton(
                        onPressed: resetAllPomodoro,
                        child: Text(
                          'ALL RESET',
                          style: TextStyle(
                            color: Theme.of(context).cardColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: IconButton(
                        color: Theme.of(context).cardColor,
                        onPressed: togglePlayAndPause,
                        iconSize: 120,
                        icon: Icon(
                          // true ? Icons.play_circle_outline : Icons.pause_circle_outline,
                          // false ? Icons.play_circle_outline : Icons.pause_circle_outline,
                          isRunning
                              ? Icons.pause_circle_outline
                              : Icons.play_circle_outline,
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: resetStatus,
                        child: Text(
                          'CURRENT\nLAP\nRESET',
                          style: TextStyle(
                            color: Theme.of(context).cardColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pomodoro',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.headline1!.color,
                        ),
                      ),
                      Text(
                        '$pomodoros',
                        style: TextStyle(
                          fontSize: 58,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.headline1!.color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  String FormattingToMinuite(int seconds) {
    var duration =
        Duration(seconds: seconds); // duration.toString()  ==  '0:00:02.000000'
    // return duration.toString().split(".")[0];  // DEPRECATED FOR first IS MORE EXPLICTED EXPRESSION THAN [0].
    // print(duration.toString().split(".").first.split(":").first);
    if (duration.toString().split(".").first.split(":").first == '0') {
      return duration.toString().split(".").first.substring(2, 7);
    } else {
      return duration.toString().split(".").first; //PRODUCTION
    }
  }

  void togglePlayAndPause() {
    setState(() {
      if (isRunning == true) {
        isRunning = false;
        timer.cancel();
      } else {
        isRunning = true;
        timer = Timer.periodic(
            Duration(seconds: 1), onTick); // onTick(); (x)   vs   onTick (o)
      }
    });
  }

  resetAllPomodoro() {
    setState(() {
      timer.cancel();
      ScreenSeconds = defaultSeconds;
      pomodoros = 0;
      isRunning = false;
    });
  }
}
