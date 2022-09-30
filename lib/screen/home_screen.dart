import 'package:flutter/material.dart';
import 'package:practical/model/started_model.dart';

import '../section/section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF0F3FA),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserSection(),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'You have AED 5344 available in your accounts',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CardSection(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconBut(
                      img: 'assets/start_saving.png',
                      text: 'Start saving',
                      ontap: () {},
                    ),
                    IconBut(
                      img: 'assets/transaction.png',
                      text: 'Transactions',
                      ontap: () {},
                    ),
                    IconBut(
                      img: 'assets/save_rules.png',
                      text: 'Save Rules',
                      ontap: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xffFF4B4B),
                        Color(0xff0160FE),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  height: 73,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/gift.png',
                        width: 60,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Unlock exciting rewards',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Save more to earn more.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Getting started',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GettingStartedSection(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Popular Sav Jars',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                JarSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBut extends StatelessWidget {
  const IconBut(
      {Key? key, required this.img, required this.text, required this.ontap})
      : super(key: key);

  final String img;
  final String text;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          Image.asset(
            img,
            width: 30.8,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 11.25,
            ),
          )
        ],
      ),
    );
  }
}
