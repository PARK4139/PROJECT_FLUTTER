import 'dart:async';
import 'package:flutter/material.dart';

enum job { paladin, worrior, magitian }

enum study_level { begginer, intermediate, advanced }

enum programming_proficiency_level { begginer, intermediate, pro }

class CustomButton_v2 extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color color;
  final double font_size;
  final FontWeight fontWeight;

  const CustomButton_v2({
    Key? key,
    required this.text,
    required this.bgcolor,
    required this.color,
    required this.font_size,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(45),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 15,
      ),
      child: Text(
        text,
        style: TextStyle(
            color: color, fontSize: font_size, fontWeight: fontWeight),
      ),
    );
  }
}

class CustomButton_v3 extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color? color;
  final double? font_size;
  final FontWeight? fontWeight;
  final double padding_vertical;
  final double padding_horizontal;

  const CustomButton_v3({
    Key? key,
    required this.text,
    required this.bgcolor,
    required this.color,
    required this.font_size,
    required this.fontWeight,
    required this.padding_vertical,
    required this.padding_horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(45),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: padding_horizontal,
        vertical: padding_vertical,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: font_size,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}

class CustomButton_v4 extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? font_weight;
  final double? font_size;
  final Color? background_color;
  final double padding_vertical;
  final double padding_horizontal;
  final BorderRadius? border_radius;

  const CustomButton_v4({
    Key? key,
    required this.background_color,
    required this.text,
    required this.color,
    required this.font_size,
    required this.font_weight,
    required this.padding_vertical,
    required this.padding_horizontal,
    required this.border_radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: background_color,
        borderRadius: border_radius,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: padding_horizontal,
        vertical: padding_vertical,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: font_size,
          fontWeight: font_weight,
        ),
      ),
    );
  }
}

class CustomCard_v2 extends StatelessWidget {
  const CustomCard_v2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Euro',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
                // width: 100,
              ),
              Row(
                children: [
                  Text(
                    '6 428' + ' ',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'EUR',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.euro_rounded,
                  size: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard_v3 extends StatelessWidget {
  const CustomCard_v3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Won',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
                // width: 100,
              ),
              Row(
                children: [
                  Text(
                    '180,000' + ' ',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'KRW',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Transform.scale(
                  scale: 5.2,
                  child: Transform.translate(
                    offset: Offset(-1.2, 4.2),
                    child: Icon(Icons.account_circle_rounded),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard_v4 extends StatelessWidget {
  const CustomCard_v4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent.shade200,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Won',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
                // width: 100,
              ),
              Row(
                children: [
                  Text(
                    '180,000' + ' ',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'KRW',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Transform.scale(
                  scale: 5.2,
                  child: Transform.translate(
                    offset: const Offset(-7.2, 7.2),
                    child: const Text(
                      'KRW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CurrencyCard extends StatelessWidget {
  final String text_currency_category;
  final String currency_unit;
  final String currency_number;
  final Widget currency_icon_or_text;

  const CurrencyCard(
      {super.key,
      required this.text_currency_category,
      required this.currency_unit,
      required this.currency_number,
      required Widget this.currency_icon_or_text});

  @override
  Widget build(BuildContext context) {
    var IconOrText;
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text_currency_category,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
                // width: 100,
              ),
              Row(
                children: [
                  Text(
                    currency_number + ' ',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    currency_unit,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Transform.scale(
                  scale: 6.2,
                  child: Transform.translate(
                    offset: const Offset(-7.2, 4.2),
                    child: currency_icon_or_text,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomScreenHome extends StatefulWidget {
  const CustomScreenHome({Key? key}) : super(key: key);

  @override
  State<CustomScreenHome> createState() => _CustomScreenHomeState();
}

class _CustomScreenHomeState extends State<CustomScreenHome> {
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

class CustomScreenWebToon extends StatelessWidget {
  const CustomScreenWebToon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//니콜라스의 webtoonAPI 호출 결과를 저장할 model 생성
class ModelWebToon {
  final String title;
  final String thumb;
  final String id;

  // ModelWebToon({required this.title, required this.thumb, required this.id});

  ModelWebToon.fromJson(Map<String, dynamic> json)
      : this.title = json['title'],
        this.thumb = json['thumb'],
        this.id = json['id'];
}
