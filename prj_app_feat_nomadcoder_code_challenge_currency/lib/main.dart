import 'package:flutter/material.dart';
import 'wiget/custom_cards.dart';

void main() {
  runApp(const App());
}



class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(

          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
// width: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
// width: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total Balance',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                        const Text(
                          '\$5 194 482',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 42,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 20, // width: 100
                        ),
                      ],
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      text: 'Transfer',
                      color: Colors.black,
                      bgcolor: Colors.amber,
                    ),
                    CustomButton(
                      text: 'Request',
                      color: Colors.white,
                      bgcolor: Colors.black12,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50, // width: 100
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Color(0xFF181818),
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                     ),
                    CustomButton_v3(
                      text: 'View All',
                      color: Colors.white.withOpacity(0.6),
                      bgcolor: const Color(0xFF181818),
                      font_size: 18,
                      fontWeight: FontWeight.w500,
                      padding_horizontal: 0,
                      padding_vertical: 0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20, // width: 100
                ),
                CustomCard_v2(),
                Transform.translate(offset: Offset(0, -20),child: CustomCard_v3(),),
                Transform.translate(offset: Offset(0, -35),child: CustomCard_v4(),),
                Transform.translate(
                  offset: Offset(0, -50),
                  child: const CurrencyCard(
                    text_currency_category: 'Won',
                    currency_unit: 'KRW',
                    currency_number: '180,000',
                    currency_icon_or_text: Text(
                      'KRW',
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -60),
                  child: const CurrencyCard(
                    text_currency_category: 'Bitcoin',
                    currency_unit: 'BTC',
                    currency_number: '9 785',
                    currency_icon_or_text: Icon(Icons.currency_bitcoin_outlined, color: Colors.white54,),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -75),
                  child: const CurrencyCard(
                    text_currency_category: 'Dollar',
                    currency_unit: 'USD',
                    currency_number: '1313',
                    currency_icon_or_text: Icon(Icons.attach_money_outlined),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


