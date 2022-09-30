import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 2,
          color: const Color(
            0xff064F8C,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 17,
          horizontal: 35,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Savings',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: const Color(0xff333333).withOpacity(0.56),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    text: 'AED ',
                    children: const [
                      TextSpan(
                        text: '2065',
                        style:
                            TextStyle(color: Color(0xff333333), fontSize: 25),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/mobile.png',
                  height: 40,
                )
              ],
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'In 3 Goal Accounts',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/slice.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/clock.png',
                  width: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
