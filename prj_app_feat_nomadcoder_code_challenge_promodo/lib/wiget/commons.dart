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

